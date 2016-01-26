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

module Sandoz

	def init(p)
		@@p = p
	end


end

def defsketch(&block)
	block
end

sketch = defsketch do |p|
	setup = defsetup do
		`#{p}.createCanvas(600, 600)`
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
