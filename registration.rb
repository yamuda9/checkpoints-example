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
