class Person
	attr_accessor :name
	def initilize
		@name
	end
	def greeting
	puts "Hi my name is #{name}"
	end
end

class Student < Person
	def learn
		puts "I get it!"
	end
end

class Instructor < Person
	def teach
		puts "Everything in Ruby is an Object"
	end
end

instructor = Instructor.new 
instructor.name = "Chris"
instructor.greeting

student = Student.new
student.name = "Christina"
student.greeting

instructor.teach
student.learn

#The below doesn't work because the teach method is defined in the Instructor Class and is not inherited in the Student class
student.teach