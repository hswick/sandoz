#Particle System
class Particle
	def initialize(x, y, d)
		@x = x
		@y = y
		@d = d
		@speedX = random -1, 1
		@speedY = random -1, 1
	end

	def draw
		ellipse @x, @y, @d, @d
	end

	def collisions
		@speedX *= -1 if @x + @d/2 >= width || @x - @d/2 <= 0
		@speedY *= -1 if @y + @d/2 >= height || @y - @d/2 <= 0
	end

	def move
		@x += @speedX
		@y += @speedY
	end
end

defsketch do

	NUM_PARTICLES = 100

	setup do
		size 600, 600
		@particles = [].tap do |particles|
			NUM_PARTICLES.times do
				particles << Particle.new(width/2, height/2, 10)
			end
		end
	end

	draw do
		background 255, 255, 0

		no_stroke
		fill 0, 0, 0, 100
		@particles.each do |p|
			p.draw
			p.collisions
			p.move
		end
	end

end
