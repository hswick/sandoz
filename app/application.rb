require 'opal'
require 'sandoz'
#include the methods from sandoz into the global namespace
include Sandoz
#else have to do Sandoz::rect 10, 10, 10, 10

defsketch do

	setup do
		size 600, 600
		@x = width / 2
		@y = height / 2
	end

	r = 100
	speed_x = 1
	speed_y = 4

	draw do
		background 0, 0, 0
		fill 0, 100, 255
		ellipse @x, @y, r, r
		@x+=speed_x
		@y+=speed_y

		speed_y *= -1 if @y + r / 2 >= height || @y - r / 2 <= 0
		speed_x *= -1 if @x + r / 2 >= width || @x - r / 2 <= 0
	end

end
