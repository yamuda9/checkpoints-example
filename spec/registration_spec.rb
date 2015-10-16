require 'spec_helper'

describe Registration do
  joe_smith = Student.new(first_name: "Joe", last_name: "Smith")
  rails_web_development = Course.new(name: "Rails Web Development", checkpoints: 55)
  rails_registration = Registration.new(student: joe_smith, course: rails_web_development, duration: 24)

  describe "attributes" do
    it "should respond to student" do
      expect(rails_registration).to respond_to(:student)
    end

    it "should respond to course" do
      expect(rails_registration).to respond_to(:course)
    end
  end

  describe "assigns" do
    it "should return the student's first name" do
      expect(rails_registration.student.first_name).to eq("Joe")
    end

    it "should return the student's last name" do
      expect(rails_registration.student.last_name).to eq("Smith")
    end

    it "should return the student's full name" do
      expect(rails_registration.student.full_name).to eq("Joe Smith")
    end

    it "should return the course name" do
      expect(rails_registration.course.name).to eq("Rails Web Development")
    end

    it "should return the number of checkpoints for the course" do
      expect(rails_registration.course.checkpoints).to eq(55)
    end
  end

  describe "actions" do
    it "should be one less checkpoint when completing a checkpoint" do
      rails_registration.course.complete_checkpoint
      expect(rails_registration.course.checkpoints).to eq(54)
    end

    it "should return the remaining number of checkpoints" do
      expect(rails_registration.course.remaining_checkpoints).to eq(54)
    end
  end
end
