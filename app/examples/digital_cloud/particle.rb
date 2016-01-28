class Particle
	def initialize(d, speed)
    @x = random width
    @y = random height
		@d = d
    @speed = random -speed, speed
		@speedX = @speed
		@speedY = @speed
    @alpha = 200
    @value = random(20, 175)
    @@cx = random(width)
    @@cy = random(height)
    @start = millis
    @lifespan = random(1, 2)
	end

	def draw
    fill @value, @value, @value, @alpha
		ellipse @x, @y, @d, @d
	end

	def collisions
		@x = @@cx if @x + @d/2 >= width || @x - @d/2 <= 0
		@y = @@cy if @y + @d/2 >= height || @y - @d/2 <= 0
	end

	def move
		@x += @speedX
		@y += @speedY
	end

  def brownian_motion
    n = random(4).to_i
    if n == 0
      @x += @speedX
    elsif n == 1
      @y += @speedY
    elsif n == 2
      @x -= @speedX
    elsif n == 3
      @y -= @speedY
    end
  end

  def alpha_dynamics
    scaled_dist = map(dist(@@cx, @@cy, @x, @y), 0, 100, 0, 255)
    @alpha = 255 - scaled_dist
  end

  def centroid_x
    @@cx
  end

  def centroid_y
    @@cy
  end

  def centroid_collisions
    @@cx = random(width) if @@cx + @d/2 >= width || @@cx - @d/2 <= 0
    @@cy = random(height) if @@cy + @d/2 >= height || @@cy - @d/2 <= 0
  end

  def centroid_brownian_motion
    n = random(4).to_i
    if n == 0
      @@cx += @speedX
    elsif n == 1
      @@cy += @speedY
    elsif n == 2
      @@cx -= @speedX
    elsif n == 3
      @@cy -= @speedY
    end
  end

  def lifecycle
    if @start - millis >= @lifespan
      @x = @@cx
      @y = @@cy
      @start = millis
    end
  end
end
