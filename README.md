# A Gem Named Sandoz

## Rationale

But when we use Opal, all Ruby functions are defined within the Opal namespace, prepended with a `$`. So we're really defining `Opal.$setup`, `Opal.$draw`, etc.
p5.js expects that `setup` and `draw` are in the global namespace, and it also defines all of its methods in the global namespace. As such, there are two problems:

* p5.js needs to call a global `setup` and `draw` but, via Opal, we can't cleanly define a global `setup` and `draw`
* Ruby code needs to call the global p5.js functions (e.g. `createCanvas`), which requires wrapping all the p5.js functions in equivalent Ruby functions

Sandoz wraps the p5.js library, and bridges the Ruby methods to JavaScript, enabling us to call p5.js functions from Ruby.

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

## Example Application

https://github.com/hswick/sandoz_demo

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/hswick/sandoz](https://github.com/hswick/sandoz). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
