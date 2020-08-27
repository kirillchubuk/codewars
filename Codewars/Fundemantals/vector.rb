# https://www.codewars.com/kata/532a69ee484b0e27120000b6/train/ruby

class Vector
	attr_reader :x, :y, :z

	def initialize(*args)
		# args.flatten!
		# @x = args[0]
		# @y = args[1]
		# @z = args[2]
		@x, @y, @z = args.flatten
	end

	def +(other)
		Vector.new(x + other.x, y + other.y, z + other.z)
	end

	def -(other)
		Vector.new(x - other.x, y - other.y, z - other.z)
	end

	def ==(other)
		x == other.x && y == other.y && z == other.z
	end

	def dot(other)
		x * other.x + y * other.y + z * other.z
	end

	def to_a
		[x, y, z]
	end

	def cross(other)
		Vector.new(y * other.z - z * other.y, z * other.x - x * other.z, x * other.y - y * other.x)
	end

	def magnitude
 		Math.sqrt(x**2 + y**2 + z**2)
	end

	def to_s
   "<#{x}, #{y}, #{z}>"
	end
end

a = Vector.new(1,2,3)
p a
b = Vector.new([1,2,3])
p b
p a + b
p a - b
p a == b
p a.to_a
p a.magnitude

