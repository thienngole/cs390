require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest

  #include Devise::Controllers::Helpers

  #add this line
  include Devise::Test::IntegrationHelpers

  setup do
    @student = students(:one)
    sign_in users(:one)
  end

  test "should get index" do
    get students_url
    assert_response :success
  end

  test "should get new" do
    get new_student_url
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      #post students_url, params: { student: { name: @student.name, student_id: @student.student_id } }
      post students_url, params: { student: { name: 'Heaven', student_id: '900900900' } }
    end

    assert_redirected_to student_url(Student.last)
  end

  test "should show student" do
    get student_url(@student)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_url(@student)
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { name: @student.name, student_id: @student.student_id } }
    assert_redirected_to student_url(@student)
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete student_url(@student)
    end

    assert_redirected_to students_url
  end

  test "shouldn't find a missing student" do
    assert Student.where("name like ?", "Phrag. besseae").length == 0
  end

end
