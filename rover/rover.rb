class Rover
	attr_accessor :x, :y, :direction, :instructions

	def initialize(x, y, direction, instructions)
		@x = x
		@y = y
		@direction = direction
		@instructions = instructions.split("")
	end

	def final_position
		@instructions.length.times do
			case @direction
			when "N"
				case @instructions[0]
				when "M"
					@y += 1
					@instructions.delete_at(0)
				when "L"
					@direction = "W"
					@instructions.delete_at(0)

				when "R"
					@direction = "E"
					@instructions.delete_at(0)
				end
			when "E"
				case @instructions[0]
				when "M"
					@x += 1
					@instructions.delete_at(0)
				when "L"
					@direction = "N"
					@instructions.delete_at(0)

				when "R"
					@direction = "S"
					@instructions.delete_at(0)
				end
			when "S"
				case @instructions[0]
				when "M"
					@y -= 1
					@instructions.delete_at(0)
				when "L"
					@direction = "E"
					@instructions.delete_at(0)

				when "R"
					@direction = "W"
					@instructions.delete_at(0)
				end
			when "W"
				case @instructions[0]
				when "M"
					@x -= 1
					@instructions.delete_at(0)
				when "L"
					@direction = "S"
					@instructions.delete_at(0)

				when "R"
					@direction = "N"
					@instructions.delete_at(0)
				end
			end
		end
	end
end