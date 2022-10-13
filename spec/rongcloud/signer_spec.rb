RSpec.describe RongCloud::Signer do
  describe ".verify" do
    it do
      params = {
        "nonce" => "6JdWufDkiLqyeRU5",
        "timestamp" => "1665601025006",
        "signature" => "5c9891b71dbf07e37b69af7c17b4143ea5bb10d3"
      }
      verified = described_class.verify?(
        app_secret: "your-own-app-secret",
        nonce: params["nonce"],
        timestamp: params["timestamp"],
        signature: params["signature"]
      )
      expect(verified).to be_truthy
    end
  end
end
