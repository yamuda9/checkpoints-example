```
class Student
  attr_accessor :first_name
  attr_accessor :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end
end

# Rails Web Development course has 55 checkpoints.
# iOS Development course has 48 checkpoints.

class Course
  attr_accessor :name
  attr_accessor :checkpoints

  def initialize(name, checkpoints)
    @name = name
    @checkpoints = checkpoints
  end

  def complete_checkpoint
    @checkpoints -= 1
  end

  def remaining_checkpoints
    @checkpoints
  end
end

class Registration
  attr_accessor :student
  attr_accessor :course
  attr_reader :started_at
  attr_reader :ended_at

  # allows one to create a new registration
  def initialize(student, course, duration)
    @student = student
    @course = course
    @started_at = 0
    @ended_at = duration
  end

  def complete_checkpoint
    @course.complete_checkpoint
  end

  def remaining_checkpoints
    @course.remaining_checkpoints
  end
end

# setup our student, course, and registration objects

john_doe = Student.new( "John", "Doe")
rails_web_development = Course.new("Rails Web Development", 55 )
ios_development = Course.new("iOS Development", 48 )

# register for courses

rails_registration = Registration.new(john_doe, rails_web_development, 24)
ios_registration = Registration.new(john_doe, ios_development, 24)

# check the number of remaining checkpoints

puts ""
puts "Student: #{rails_registration.student.full_name}"
puts "Course: #{rails_web_development.name}; Total Checkpoints: #{rails_registration.course.checkpoints}; Duration: #{rails_registration.ended_at} weeks"
puts "Course: #{ios_development.name}; Total Checkpoints: #{ios_registration.course.checkpoints}; Duration: #{ios_registration.ended_at} weeks"
puts ""

puts "Remaining Rails checkpoints: #{rails_registration.remaining_checkpoints}"
puts "Remaining iOS checkpoints: #{ios_registration.remaining_checkpoints}"
puts ""

# complete some checkpoints

puts "Completed Rails checkpoint: #{rails_registration.complete_checkpoint}"
puts "Completed iOS checkpoint: #{ios_registration.complete_checkpoint}"
puts "Completed Rails checkpoint: #{rails_registration.complete_checkpoint}"
puts "Completed iOS checkpoint: #{ios_registration.complete_checkpoint}"
puts ""

# check the number of remaining checkpoints

puts "Remaining Rails checkpoints: #{rails_registration.remaining_checkpoints}"
puts "Remaining iOS checkpoints: #{ios_registration.remaining_checkpoints}"

```

Output:

```
$ ruby checkpoints-example.rb

Student: John Doe
Course: Rails Web Development; Total Checkpoints: 55; Duration: 24 weeks
Course: iOS Development; Total Checkpoints: 48; Duration: 24 weeks

Remaining Rails checkpoints: 55
Remaining iOS checkpoints: 48

Completed Rails checkpoint: 54
Completed iOS checkpoint: 47
Completed Rails checkpoint: 53
Completed iOS checkpoint: 46

Remaining Rails checkpoints: 53
Remaining iOS checkpoints: 46

```
