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
end
