require 'spec_helper'

describe Course do
  course = Course.new(name: "Rails Web Development", checkpoints: 55)

  describe "attributes" do
    it "should respond to name" do
      expect(course).to respond_to(:name)
    end

    it "should respond to checkpoints" do
      expect(course).to respond_to(:checkpoints)
    end
  end

  describe "actions" do
    it "should be one less when completing a checkpoint" do
      course.complete_checkpoint
      expect(course.checkpoints).to eq(54)
    end

    it "should return the number of remaining checkpoints" do
      course.remaining_checkpoints
      expect(course.checkpoints).to eq(54)
    end
  end
end
