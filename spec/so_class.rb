class Point #< Object
	
	@@nbr_points = 0
  	
  	def initialize(x=0, y=0)
    	@x  = x
  		@y  = y
  		@@nbr_points = @@nbr_points + 1
  	end

  	def x #reader d'attribut
  		@x
  	end
  	def y
  		@y
  	end
   	def x=(newx) #attribut writer
  		@x = newx
  	end
  	def y=(newy)
  		@y = newy
  	end
  	def pos
  		[@x,@y]
  	end

  	def move!(a,b)
  		@x = x + a
  		@y = y + b
  	end
  	def move_to!(a,b)
  		@x = a
  		@y = b
  	end
  	def +(point)
  		Point.new(x+point.x,y+point.y)
  	end	

      # Point's random Class Methods, takes 5 parameters:
      # - count, xmin, ymin, xmax, ymax
      # it returns count point with random position between [xmin, ymin] and [xmax, ymax]
	def Point.random(count, xmin, ymin, xmax, ymax)
		  array = [0]
		  count.times do |i|
		      #array[i] = Point.new(rand{xmin,xmax},rand{ymin,ymax})
		  	  array[i] = Point.new(6,i+5)
		  end
		  return array
	end
	def Point.random_count
		#afficher le nombre d'objets points existant
		@@nbr_points
	end

	def magic?
		if x == 42 and y == 42
			return true
		else
			return false
		end
	end
	protected
	def move_to_magic_position!
		@x = 42
		@y = 42
	end

end

class ColouredPoint < Point
	def initialize(x=0, y=0, color='FFFFFF')
	    @x = y
	    @y = y  
		@color = color
    end
    def color #reader d'attribut
  		@color
  	end
    def color=(newcolor)#writer d'attribut
    	@color = newcolor
    end
    def red
    	@color = '11'
    end
    def green
    	@color = '22'
    end
    def blue
    	@color = '33'
    end
end