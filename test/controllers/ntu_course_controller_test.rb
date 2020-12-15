require 'test_helper'

class NtuCourseControllerTest < ActionDispatch::IntegrationTest
  test "should post index" do
    post ntu_course_index_url
    assert_response :success
  end

  test "should get show" do
    get ntu_course_url
    assert_response :success
  end

end
