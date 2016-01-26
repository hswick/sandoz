require 'opal'
require 'sandoz'
#include the methods from sandoz into the global namespace
include Sandoz
#else have to do Sandoz::rect 10, 10, 10, 10

defsketch do

	setup do
		size 600, 600
	end

	draw do
		background 255, 255, 0
	end

end
