require 'spec_helper'

describe Course do
<<<<<<< HEAD

  describe "#initialize" do
    it "should not be nil when creating new instance" do
      course = Course.new("Rails Web Development", 55)
      expect(course).not_to be(nil)
    end

    it "should create new instances with name" do
      course = Course.new("Rails Web Development", 55)
      expect(course.name).to eq("Rails Web Development")
    end

    it "should create new instances with checkpoints" do
      course = Course.new("Rails Web Development", 55)
=======
  
  describe "#initialize" do
    it "should not be nil when creating new instance" do
      course = Course.new(name: "Rails Web Development", checkpoints: 55)
      expect(course).not_to be(nil)
    end
    
    it "should create new instances with name" do
      course = Course.new(name: "Rails Web Development", checkpoints: 55)
      expect(course.name).to eq("Rails Web Development")
    end
    
    it "should create new instances with checkpoints" do
      course = Course.new(name: "Rails Web Development", checkpoints: 55)
>>>>>>> 658e4a71fdf5a0de9e6076f6af0a51be60f36f85
      expect(course.checkpoints).to eq(55)
    end
  end

  describe "attributes" do
    it "should respond to name" do
<<<<<<< HEAD
      course = Course.new("Rails Web Development", 55)
=======
      course = Course.new(name: "Rails Web Development", checkpoints: 55)
>>>>>>> 658e4a71fdf5a0de9e6076f6af0a51be60f36f85
      expect(course).to respond_to(:name)
    end

    it "should respond to checkpoints" do
<<<<<<< HEAD
      course = Course.new("Rails Web Development", 55)
=======
      course = Course.new(name: "Rails Web Development", checkpoints: 55)
>>>>>>> 658e4a71fdf5a0de9e6076f6af0a51be60f36f85
      expect(course).to respond_to(:checkpoints)
    end
  end

  describe "actions" do
    it "#complete_checkpoint" do
<<<<<<< HEAD
      course = Course.new("Rails Web Development", 55)
=======
      course = Course.new(name: "Rails Web Development", checkpoints: 55)
>>>>>>> 658e4a71fdf5a0de9e6076f6af0a51be60f36f85
      course.complete_checkpoint
      expect(course.checkpoints).to eq(54)
    end

    it "#remaining_checkpoints" do
<<<<<<< HEAD
      course = Course.new("Rails Web Development", 55)
=======
      course = Course.new(name: "Rails Web Development", checkpoints: 55)
>>>>>>> 658e4a71fdf5a0de9e6076f6af0a51be60f36f85
      course.complete_checkpoint
      expect(course.remaining_checkpoints).to eq(54)
    end
  end
end