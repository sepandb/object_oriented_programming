require_relative 'rover'

class Grid

	attr_accessor :gridx, :gridy

	def initialize(gridx, gridy)
		@gridx = gridx
		@gridy = gridy
	end

	def add_rover(x, y, direction, instructions)
		r = Rover.new(x, y, direction, instructions)
		r.final_position

		puts "ROVER POSITION:"

		if r.x>@gridx ||r.y>@gridy
			puts "This rover has ventured off too far!"
			puts ""
		else
			puts "x: #{r.x}"
			puts "y: #{r.y}"
			puts "direction: #{r.direction}"
			puts ""
		end
	end
end

#change grid size here
grid = Grid.new(5, 5)

#change coordinates/directions/instructions below
grid.add_rover(1,2, "N", "LMLMLMLMM")
grid.add_rover(3,3, "E", "MMRMMRMRRM")