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
