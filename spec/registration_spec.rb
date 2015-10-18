require 'spec_helper'

describe Registration do

  describe "intialize" do
    it "should not be nil when creating new instance" do
      joe_smith = Student.new("Joe", "Smith")
      rails_web_development = Course.new("Rails Web Development", 55)
      rails_registration = Registration.new(joe_smith, rails_web_development, 24)

      expect(rails_registration).not_to be(nil)
    end

    it "should create a new instance for student's first name" do
      joe_smith = Student.new("Joe", "Smith")
      rails_web_development = Course.new("Rails Web Development", 55)
      rails_registration = Registration.new(joe_smith, rails_web_development, 24)

      expect(rails_registration.student.first_name).to eq("Joe")
    end

    it "should create a new instance for student's last name" do
      joe_smith = Student.new("Joe", "Smith")
      rails_web_development = Course.new("Rails Web Development", 55)
      rails_registration = Registration.new(joe_smith, rails_web_development, 24)

      expect(rails_registration.student.last_name).to eq("Smith")
    end

    it "should create a new instance for student's full name" do
      joe_smith = Student.new("Joe", "Smith")
      rails_web_development = Course.new("Rails Web Development", 55)
      rails_registration = Registration.new(joe_smith, rails_web_development, 24)

      expect(rails_registration.student.full_name).to eq("Joe Smith")
    end

    it "should create a new instance for course name" do
      joe_smith = Student.new("Joe", "Smith")
      rails_web_development = Course.new("Rails Web Development", 55)
      rails_registration = Registration.new(joe_smith, rails_web_development, 24)

      expect(rails_registration.course.name).to eq("Rails Web Development")
    end

    it "should create a new instance for number of checkpoints for the course" do
      joe_smith = Student.new("Joe", "Smith")
      rails_web_development = Course.new("Rails Web Development", 55)
      rails_registration = Registration.new(joe_smith, rails_web_development, 24)

      expect(rails_registration.course.checkpoints).to eq(55)
    end
  end

  describe "actions" do
    it "should be one less checkpoint when completing a checkpoint" do
      joe_smith = Student.new("Joe", "Smith")
      rails_web_development = Course.new("Rails Web Development", 55)
      rails_registration = Registration.new(joe_smith, rails_web_development, 24)

      rails_registration.course.complete_checkpoint
      expect(rails_registration.course.checkpoints).to eq(54)
    end

    it "should return the remaining number of checkpoints" do
      joe_smith = Student.new("Joe", "Smith")
      rails_web_development = Course.new("Rails Web Development", 55)
      rails_registration = Registration.new(joe_smith, rails_web_development, 24)

      rails_registration.course.complete_checkpoint
      expect(rails_registration.course.remaining_checkpoints).to eq(54)
    end
  end
end
