module RongCloud
  class Signer
    def self.generate(params)
      app_secret = params.fetch(:app_secret)
      nonce = params.fetch(:nonce)
      timestamp = params.fetch(:timestamp)
      string = "#{app_secret}#{nonce}#{timestamp}"
      Digest::SHA1.hexdigest(string)
    end

    def self.verify?(params)
      params.fetch(:signature) == generate(params)
    end
  end
end
