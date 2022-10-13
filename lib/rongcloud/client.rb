module RongCloud
  class Client
    extend Forwardable

    attr_reader :app_key, :app_secret

    def_delegators :@http, :post

    def initialize(options)
      @app_key = options.fetch(:app_key)
      @app_secret = options.fetch(:app_secret)
      @http = Http.new(
        self,
        host: options.fetch(:host),
        options: options[:http] || {}
      )
    end

    def api
      @api ||= Struct.new(:client) do
        include ::RongCloud::API
      end.new(self)
    end
  end
end
