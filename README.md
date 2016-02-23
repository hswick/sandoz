# Sandoz

A Gem Named Sandoz

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sandoz'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sandoz

## Usage

This is assuming you are already have Opal boilerplate setup. See Opal gem docs.

```ruby
require 'opal'
require 'sandoz'
include Sandoz

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

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/sandoz. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
