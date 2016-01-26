require 'opal'
require 'p5'

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

module Sandoz

	def init(p)
		@@p = p
	end

	def canvas(w, h)
		`#{@@p}.createCanvas(#{w}, #{h})`
	end

end

include Sandoz

sketch = defsketch do |p|
	init(p)
	setup = defsetup do
		canvas(600, 600)
	end

	x = 2

	draw = defdraw do
		`#{p}.background(0)`
		`#{p}.fill(255, 0, 0)`
		`#{p}.rect(#{x}, 20, 100, 100)`
		x+=1
	end

	`#{p}.setup = #{setup}`
	`#{p}.draw = #{draw}`
end

P5.new(sketch, 'content')
