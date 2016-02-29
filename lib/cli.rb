require 'thor'

module Sandoz

  class Cli < Thor

    desc "hello", "say hello"
    def hello
      puts "Well, I met a girl called Sandoz\nAnd she taught me many, many things\nGood things, very good things, sweet things."
    end

  end

end