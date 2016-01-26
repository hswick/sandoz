module Sandoz

	def init(p)
		@@p = p
	end

	def canvas(w, h)
		`#{@@p}.createCanvas(#{w}, #{h})`
	end

	def background(r, g, b)
		`#{@@p}.background(#{r}, #{g}, #{b})`
	end

	def fill(r, g, b, a=255)
		`#{@@p}.fill(#{a}, #{g}, #{b}, #{a})`
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

	def stroke(r, g, b)
		`#{@@p}.stroke(#{r}, #{g}, #{b})`
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

end
