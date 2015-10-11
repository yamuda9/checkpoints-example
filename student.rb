class Student
  attr_accessor :first_name
  attr_accessor :last_name

  def initialize(names = {})
  # please complete the implementation using TDD
    @first_name = names[:first_name]
    @last_name = names[:last_name]
  end
end
