require 'opal'
require 'p5'
require 'sandoz'
#include the methods from sandoz into the global namespace
include Sandoz
#else have to do Sandoz::rect 10, 10, 10, 10

class P5
	def initialize(s, tag)
		`new p5(#{s}, #{tag})`
	end
end

sketch = defsketch do |p|

	init(p)#This initializes Sandoz with the p5 object

	setup do
		canvas(600, 600)

	end

	x = 200

	draw do
		background 0, 100, 255

		fill 255, 0, 255
		stroke(0, 0, 0)
		stroke_weight(10)
		rect x, 100, 100, 100
		x+=1
	end

end

P5.new(sketch, 'content')
