require 'p5'
module Sandoz

	#https://github.com/processing/p5.js/wiki/p5.js-overview#instantiation--namespace
	#todo Add html element argument
	def defsketch(id, &block)
		sketch = Proc.new do |p|
			init(p)
			block.call
		end
		@p5 = `new p5(#{sketch}, #{id})`
	end

	def view_p
		`return #{@p5}`
	end

	def init(p)
		@@p = p
	end

	def size(w, h)
		`#{@@p}.createCanvas(#{w}, #{h})`
	end

	def background(r, g=nil, b=nil)
		if g == nil && b == nil
			`#{@@p}.background(#{r})`
		else
			`#{@@p}.background(#{r}, #{g}, #{b})`
		end
	end

	def fill(r, g=nil, b=nil, a=nil)
		if g==nil && b ==nil
			`#{@@p}.fill(#{r})`
		elsif a == nil
			`#{@@p}.fill(#{r}, #{g}, #{b})`
		else
			`#{@@p}.fill(#{r}, #{g}, #{b}, #{a})`
		end
	end

	def rect(x, y, w, h)
		`#{@@p}.rect(#{x}, #{y}, #{w}, #{h})`
	end

	def ellipse(x, y, w, h)
		`#{@@p}.ellipse(#{x}, #{y}, #{w}, #{h})`
	end

	def width
		`#{@@p}.width`
	end

	def height
		`#{@@p}.height`
	end

	def line(x1, y1, x2, y2)
		`#{@@p}.line(#{x1}, #{y1}, #{x2}, #{y2})`
	end

	def point(x, y)
		`#{@@p}.point(#{x}, #{y})`
	end

	def stroke(r, g=nil, b=nil, a=nil)
		if g==nil && b ==nil
			`#{@@p}.stroke(#{r})`
		elsif a == nil
			`#{@@p}.stroke(#{r}, #{g}, #{b})`
		else
			`#{@@p}.stroke(#{r}, #{g}, #{b}, #{a})`
		end
	end

	def no_stroke
		`#{@@p}.noStroke()`
	end

	def stroke_weight(weight)
		`#{@@p}.strokeWeight(#{weight})`
	end

  def setup(&block)
    `#{@@p}.setup = #{block}`
  end

  def draw(&block)
    `#{@@p}.draw = #{block}`
  end

	def dist(x1, y1, x2, y2)
		`return #{@@p}.dist(x1, y1, x2, y2)`
	end

	def random(min, max=nil)
		if max
			`return #{@@p}.random(#{min}, #{max})`
		else
			`return #{@@p}.random(#{min})`
		end
	end

	def color(r, g=nil, b=nil, a=nil)
		if g==nil && b ==nil
			`return #{@@p}.color(#{r})`
		elsif a == nil
			`return #{@@p}.color(#{r}, #{g}, #{b})`
		else
			`return #{@@p}.color(#{r}, #{g}, #{b}, #{a})`
		end
	end

	def map(value, start1, stop1, start2, stop2)
		`return #{@@p}.map(#{value}, #{start1}, #{stop1}, #{start2}, #{stop2})`
	end

	def millis
		`return #{@@p}.millis();`
	end

	def no_fill
		`#{@@p}.noFill()`
	end

	def noise(x, y=nil, z=nil)
		if y == nil && z == nil
			`return #{@@p}.noise(#{x})`
		elsif z == nil
			`return #{@@p}.noise(#{x}, #{y})`
		else
			`return #{@@p}.noise(#{x}, #{y}, #{z})`
		end
	end

	def text(text, x, y)
		`#{@@p}.text(#{text}, #{x}, #{y})`
	end
end
