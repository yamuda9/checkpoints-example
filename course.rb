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
