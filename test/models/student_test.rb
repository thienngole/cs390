require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "student name must not be empty" do
    student = Student.new(name: '')
    assert student.invalid?
  end

  test "Studnet id must not be empty" do
    student = Student.new(student_id: '')
    assert student.invalid?
  end

  test "Studnet id longger than 9 char" do
    student = Student.new(student_id: '9999999999')
    assert student.invalid?
  end

end
