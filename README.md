# rongcloud-server-sdk-ruby

Rong Cloud Server SDK in Ruby.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rongcloud-server-sdk', require: 'rongcloud'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rongcloud-server-sdk


## Usage

```ruby
rongcloud = RongCloud::Client::new(
  app_key: ENV["RONGCLOUD_APP_KEY"],
  app_secret: ENV["RONGCLOUD_APP_SECRET"],
  host: "api-cn.ronghub.com"
)

rongcloud.api.user.gettoken(
  userId: 'nutzer'
)
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/souk4711/rongcloud-server-sdk-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/souk4711/rongcloud-server-sdk-ruby/blob/main/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).


## Code of Conduct

Everyone interacting in the rongcloud-server-sdk-ruby project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/souk4711/rongcloud-server-sdk-ruby/blob/main/CODE_OF_CONDUCT.md).
