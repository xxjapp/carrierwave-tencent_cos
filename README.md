# CarrierWave::TencentCos

This gem adds storage support for Tencent COS to CarrierWave.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'carrierwave-tencent_cos'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install carrierwave-tencent_cos

## Usage

Configure in `config/initializes/carrierwave.rb`

```ruby
CarrierWave.configure do |conf|
    conf.storage        = :tencent_cos  # set as default storage
    conf.tencent_cos    = {
        secret_id:      ENV['SECRET_ID_1'],
        secret_key:     ENV['SECRET_KEY_1'],
        host:           ENV['HOST_1'],
        parent_path:    '/app_name_1'
    }
end
```

You can also set the storage to `:tencent_cos` in the specified uploader:

```ruby
class PictureUploader < CarrierWave::Uploader::Base
    storage :tencent_cos
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/xxjapp/carrierwave-tencent_cos. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CarrierWave::TencentCos project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/xxjapp/carrierwave-tencent_cos/blob/master/CODE_OF_CONDUCT.md).

## Links

* [ruby gem carrierwave-tencent_cos](https://rubygems.org/gems/carrierwave-tencent_cos)
* [ruby gem tencent_cos_sdk](https://rubygems.org/gems/tencent_cos_sdk)
* [carrierwave](https://github.com/carrierwaveuploader/carrierwave)
