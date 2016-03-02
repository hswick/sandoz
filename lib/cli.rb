require 'thor'

module Sandoz

  class Cli < Thor

    desc "hello", "Say hello"
    def hello
      puts "Well, I met a girl called Sandoz\nAnd she taught me many, many things\nGood things, very good things, sweet things."
    end

    desc "new", "Take a hit and create a new sandoz project"
    def new
      `say Well, I met a girl called Sandoz`
    end

  end

end