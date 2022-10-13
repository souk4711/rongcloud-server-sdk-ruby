module RongCloud
  class Http
    def initialize(client, options)
      @client = client
      @host = options.fetch(:host)
      @options = options.fetch(:options)
    end

    def post(path, options)
      request(:post, path, options)
    end

    private

    def request(verb, path, options)
      uri = uri_for(path)

      nonce = random_str(16)
      timestamp = (Time.now.to_f * 1000).to_i.to_s
      options[:headers] = {
        "RC-App-Key" => @client.app_key,
        "RC-Nonce" => nonce,
        "RC-Timestamp" => timestamp,
        "RC-Signature" => Signer.generate({
          app_secret: @client.app_secret,
          nonce: nonce,
          timestamp: timestamp
        })
      }

      begin
        response = http(@options).request(verb, uri, options)
      rescue HTTP::Error => e
        raise RongCloud::Exceptions::HttpError, e.message
      end

      parse_response(response) do |parse_as, result|
        case parse_as
        when :json
          break result if result["code"] == 200
          raise RongCloud::Exceptions::APIError, result["errorMessage"]
        else
          result
        end
      end
    end

    def uri_for(path)
      uri_options = {scheme: "https", host: @host, path: path}
      Addressable::URI.new(uri_options)
    end

    def random_str(str_size)
      chars = [*("a".."z"), *("A".."Z"), *("0".."9")]
      chars.sample(str_size).join
    end

    def http(options)
      HTTP::Client.new(HTTP::Options.new(options))
    end

    def parse_response(response)
      content_type = response.headers[:content_type]
      parse_as = {
        %r{^application/json} => :json,
        %r{^text/plain} => :plain
      }.each_with_object([]) { |match, memo| memo << match[1] if content_type&.match?(match[0]) }.first || :plain

      if parse_as == :plain
        result = begin
          parse_json_response(response)
        rescue
          nil
        end
        if result
          return yield(:json, result)
        else
          return yield(:plain, response.body)
        end
      end

      result = case parse_as
      when :json
        parse_json_response(response)
      else
        response.body
      end

      yield(parse_as, result)
    end

    def parse_json_response(response)
      JSON.parse(response.body.to_s)
    end
  end
end
