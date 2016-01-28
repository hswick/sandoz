require 'opal'
require 'sandoz'
include Sandoz

defsketch("content") do

  setup do
    size 800, 800
  end

  draw do
    background 0
    rect 200, 200, 200, 200
  end

end
