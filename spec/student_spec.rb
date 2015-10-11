require 'spec_helper'

describe Student do
  student = Student.new(first_name: "Joe", last_name: "Smith")

  describe "attributes" do
    it "should respond to first_name" do
      expect(student).to respond_to(:first_name)
    end

    it "should respond to last_name" do
      expect(student).to respond_to(:last_name)
    end
  end
end
