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