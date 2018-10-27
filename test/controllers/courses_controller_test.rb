require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest

  #add this line
  include Devise::Test::IntegrationHelpers

  setup do
    @course = courses(:one)
    sign_in users(:one)
  end

  test "should get index" do
    get courses_url
    assert_response :success
  end

  test "should get new" do
    get new_course_url
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      #post courses_url, params: { course: { credit_hours: @course.credit_hours, department: @course.department, name: @course.name, number: @course.number } }
      post courses_url, params: { course: { credit_hours: '4', department: 'CS', name: 'web app', number: '390' } }
    end

    assert_redirected_to course_url(Course.last)
  end

  test "should show course" do
    get course_url(@course)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_url(@course)
    assert_response :success
  end

  test "should update course" do
    patch course_url(@course), params: { course: { credit_hours: @course.credit_hours, department: @course.department, name: @course.name, number: @course.number } }
    assert_redirected_to course_url(@course)
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete course_url(@course)
    end

    assert_redirected_to courses_url
  end

  test "shouldn't find a missing course" do
    assert Course.where("name like ?", "Growing").length == 0
  end

end
