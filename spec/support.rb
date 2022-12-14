require "logger"
require "dotenv/load"
require "vcr"
require "webmock"

VCR.configure do |config|
  config.allow_http_connections_when_no_cassette = true
  config.cassette_library_dir = "spec/cassettes"
  config.hook_into :webmock
  config.configure_rspec_metadata!
  config.filter_sensitive_data("<RONGCLOUD_APP_KEY>") do |interaction|
    ENV["RONGCLOUD_APP_KEY"]
  end
end
