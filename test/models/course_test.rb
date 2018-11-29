require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  test "the truth" do
     assert true
   end

  test "name must not be empty" do
    course = Course.new(name: '')
    assert course.invalid?
  end

  test "department must not be empty" do
    course = Course.new(department: '')
    assert course.invalid?
  end

  test "credit must be less than or equal to 4" do
    course = Course.new(credit_hours: 6)
    assert course.invalid?, "must be less than or equal to 4" 
  end

  test "credit must not be less than 1" do
    course = Course.new(credit_hours: 0)
    assert course.invalid?, "must not be less than 1"
  end

end

