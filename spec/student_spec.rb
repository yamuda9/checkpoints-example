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

  describe "assigns" do
    it "should assign Joe as the first name" do
      expect(student.first_name).to eq("Joe")
    end

    it "should assign Smith as the last name" do
      expect(student.last_name).to eq("Smith")
    end

    it "should return Joe Smith as the full name" do
      expect(student.full_name).to eq("Joe Smith")
    end
  end
end
