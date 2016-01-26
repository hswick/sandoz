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

def defsketch
	sketch = Proc.new do |p|

		setup = defsetup do
			`#{p}.createCanvas(700, 410)`
		end

		x = 100

		draw = Proc.new do
			`#{p}.background(0)`
			`#{p}.rect(#{x}, 20, 100, 100)`
			x+=1
		end

		`#{p}.setup = #{setup}`
		`#{p}.draw = #{draw}`

	end
end

s = defsketch

P5.new(s, 'content')
