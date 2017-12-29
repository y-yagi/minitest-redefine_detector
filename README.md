# Minitest::RedefineDetector

[![Build Status](https://travis-ci.org/y-yagi/minitest-redefine_detector.svg?branch=master)](https://travis-ci.org/y-yagi/minitest-redefine_detector)
[![Gem Version](https://badge.fury.io/rb/minitest-redefine_detector.svg)](http://badge.fury.io/rb/minitest-redefine_detector)

`Minitest::RedefineDetector` makes an error if there is a redefined test.

If there is a test like the following, an error will occur at run test.

```ruby
class UserTest < Minitest::Test
  def test_name
    # ...
  end

  def test_email
    # ...
  end

  def test_name
    # ...
  end
end
```

```
user_test.rb:9:in `<class:UserTest>': 'UserTest#test_name' was redefined. (Minitest::RedefineDetector::RedefineError)
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'minitest-redefine_detector'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install minitest-redefine_detector

## Usage

Setting is unnecessary because it is loaded automatically.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/y-yagi/minitest-redefine_detector. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Minitest::RedefineDetector project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/y-yagi/minitest-redefine_detector/blob/master/CODE_OF_CONDUCT.md).
