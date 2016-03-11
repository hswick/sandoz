# A Gem Named Sandoz

## Installation
Make sure you have bundler installed

    gem install bundler
Add this line to your application's Gemfile:

```ruby
gem 'sandoz'
```
Then install dependencies:

    bundle install

Run:

    bundle exec rackup

How to Require:

    require 'opal'
    require 'sandoz'

    #Have to do this to get functions in global namespace
    include Sandoz
    #Option 2:
    Sandoz::defsketch do
      Sandoz::setup do
        Sandoz::size 600, 600
        Sandoz::rect 100, 100, 100, 100
      end
    end

```ruby
defsketch("content") do
  setup do
    size 600, 600
  end

  draw do
    fill 255, 0, 0
    rect 100, 100, 100, 100
  end
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/hswick/sandoz](https://github.com/hswick/sandoz). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
