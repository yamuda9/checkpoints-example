require 'spec_helper'

describe Student do

  describe "attributes" do
    it "should respond to first_name" do
      student = Student.new("Joe", "Smith")
      expect(student).to respond_to(:first_name)
    end

    it "should respond to last_name" do
      student = Student.new("Joe", "Smith")
      expect(student).to respond_to(:last_name)
    end
  end

  describe "initialize" do
    it "should create a new instance for first name" do
      student = Student.new("Joe", "Smith")
      expect(student.first_name).to eq("Joe")
    end

    it "should create a new instance for last name" do
      student = Student.new("Joe", "Smith")
      expect(student.last_name).to eq("Smith")
    end

    it "should return Joe Smith as the full name" do
      student = Student.new("Joe", "Smith")
      expect(student.full_name).to eq("Joe Smith")
    end
  end
end