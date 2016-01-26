def demo1
  defsketch do

  	n = 30

  	setup do
  		size 600, 600
  		@x = width / 2 + random(-width/4, width/4)
  		@y = height / 2 + random(-height/4, height/4)
  		range = (0..n).to_a
  		@vals = range.select { |n| n.even? }
  		@vals2 = range.select { |n| n.odd? }
  	end

  	r = 30
  	speed_x = 3
  	speed_y = 1

  	draw do
  		background 0, 0, 0

  		@vals.each do |v|
  			stroke_weight 10 - v
  			stroke 255, 0, 0
  			x = 0 + (v * width / n)
  			line x, 0, x, height
  		end

  		no_stroke

  		fill 255, 255, 255
  		ellipse @x, @y, r, r
  		@x+=speed_x
  		@y+=speed_y

  		speed_y *= -1 if @y + r / 2 >= height || @y - r / 2 <= 0
  		speed_x *= -1 if @x + r / 2 >= width || @x - r / 2 <= 0

  		@vals2.each do |v|
  			stroke_weight 10 - v
  			stroke 255, 0, 0
  			x = 0 + (v * width / n)
  			line x, 0, x, height
  		end
  	end

  end
end
