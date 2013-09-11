require_relative 'so_class'

module Geometry

	VERSION ='0.0.1'
	Shape = 0
	LineDetector = 0 
	TriangleDetector = 0

	def Geometry.distance(p1,p2)
		Math.sqrt((p2.x-p1.x)**2+(p2.y-p1.y)**2)
	end
    def points
	end
	def add_point
	end
	def remove_point
	end
	def line?
	end
	def triangle?
	end

end