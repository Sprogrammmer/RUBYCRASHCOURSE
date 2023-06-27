=begin
  Based on the Student class written in the previous homework, do the following:
    1. Write a subclass that inherits from that class.
    2. In this class add the attributes and methods that you desire.
    3. Write a Course class, including its name, semester and any data that you’d like to include.
    4. Make the new class able to have many courses as an attribute.
    5. Test the classes creating different objects in different scenarios.
=end

require_relative "Homework5" # Requerir el archivo que contiene la clase Student

class GraduateStudent < Student
  attr_reader :research_area

  def initialize(full_name, address, phone, age, research_area)
    super(full_name, address, phone, age)
    @research_area = research_area
  end
end

class Course
  attr_reader :name, :semester, :courses

  def initialize(name, semester)
    @name = name
    @semester = semester
    @courses = []
  end

  def add_course(course)
    @courses << course
  end
end

# Create a graduate student
graduate_student = GraduateStudent.new("Jane Smith", "456 Oak Ave", "555-5678", 28, "Computer Science")

puts graduate_student.full_name #=> "Jane Smith"
puts graduate_student.research_area #=> "Computer Science"

# Test methods
puts graduate_student.underage? #=> false
puts graduate_student.over_27? #=> false

# Create Course
course1 = Course.new("Mathematics", "Fall 2023")

# Add courses
course1.add_course("Linear Algebra")
course1.add_course("Physics")

# Test Methods
puts course1.name
puts course1.semester
course1.courses.each do |course|
  puts course
end
