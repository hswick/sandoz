A Gem Named Sandoz

Useful for trying out libraries with Opal and React

    bundle install
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
