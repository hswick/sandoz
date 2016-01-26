require 'opal'
require 'sandoz'
#include the methods from sandoz into the global namespace
include Sandoz
#else have to do Sandoz::rect 10, 10, 10, 10

#todo Add html element argument

defsketch do

	setup do
		canvas(600, 600)
	end

	draw do
		background 0, 0, 0
		rect 200, 200, 200, 200
	end

end
