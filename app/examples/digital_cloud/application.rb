require 'opal'
require 'sandoz'
include Sandoz

require 'particle'

defsketch("content") do

	NUM_PARTICLES = 3000

	setup do
		size 600, 600

		@particles = [].tap do |particles|
			NUM_PARTICLES.times do
				particles << Particle.new(random(3), 5)
			end
		end

		@omega = Particle.new(20, 30)
	end

	draw do
		fill 255, 255, 255, 20
		rect 0, 0, width, height
		no_stroke
		@particles.each do |p|
			p.draw
			p.collisions
			p.brownian_motion
			p.alpha_dynamics
			p.lifecycle
		end

		@omega.centroid_brownian_motion
		@omega.centroid_collisions
		stroke random(255), random(255), random(255), 200
		no_fill
		stroke_weight 2
		ellipse @omega.centroid_x, @omega.centroid_y, 10, 10
		no_stroke
	end
end
