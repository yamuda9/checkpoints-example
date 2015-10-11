```
class Student
  attr_accessor :first_name
  attr_accessor :last_name

  def initialize(names={})
    # please complete the implementation using TDD
    @first_name = names[:first_name]
    @last_name = names[:last_name]
  end
end

# Rails Web Development course has 55 checkpoints.
# iOS Development course has 48 checkpoints.

class Course
  attr_accessor :name
  attr_accessor :checkpoints

  def initialize(info={})
    # please complete the implementation using TDD
    @name = info[:name]
    @checkpoints = info[:checkpoints]
  end

  def complete_checkpoint
    # please complete the implementation using TDD
    @checkpoints -= 1
  end

  def remaining_checkpoints
    # please complete the implementation using TDD
    @checkpoints
  end
end


class Registration
  attr_accessor :student
  attr_accessor :course
  attr_reader :started_at
  attr_reader :ended_at

  # allows one to create a new registration
  def initialize(info={})
    # please complete the implementation using TDD
    @student = info[:student]
    @course = info[:course]
    @started_at = 0
    @ended_at = info[:duration]
  end

  def complete_checkpoint
    # please complete the implementation using TDD
    @course.complete_checkpoint
  end

  def remaining_checkpoints
    # please complete the implementation using TDD
    @course.remaining_checkpoints
  end
end

# setup our student, course, and registration objects

john_doe = Student.new(first_name: "John", last_name: "Doe")
rails_web_development = Course.new(name: "Rails Web Development", checkpoints: 55 )
ios_development = Course.new(name: "iOS Development", checkpoints: 48 )

# register for courses

rails_registration = Registration.new(student: john_doe, course: rails_web_development, duration: 24)
ios_registration = Registration.new(student: john_doe, course: ios_development, duration: 24)

# check the number of remaining checkpoints

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

Remaining Rails checkpoints: 55
Remaining iOS checkpoints: 48

Completed Rails checkpoint: 54
Completed iOS checkpoint: 47
Completed Rails checkpoint: 53
Completed iOS checkpoint: 46

Remaining Rails checkpoints: 53
Remaining iOS checkpoints: 46
```
