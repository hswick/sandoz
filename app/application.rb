require 'opal'
require 'p5'
require 'sandoz'
include Sandoz#include the methods in sandoz into the global namespace

class P5
	def initialize(s, tag)
		`new p5(#{s}, #{tag})`
	end
end

def defsetup(&block)
	block
end

def defdraw(&block)
	block
end

def defsketch(&block)
	block
end

sketch = defsketch do |p|

	init(p)

	setup = defsetup do
		canvas(600, 600)
	end

	x = 2

	draw = defdraw do
		background 0, 100, 255

		fill 255, 0, 255
		stroke(0, 0, 0)
		stroke_weight(10)
		rect x, 100, 100, 100
		x+=1

		no_stroke
		ellipse width/2, height/3, 200, 200
	end

	`#{p}.setup = #{setup}`
	`#{p}.draw = #{draw}`
end

P5.new(sketch, 'content')
