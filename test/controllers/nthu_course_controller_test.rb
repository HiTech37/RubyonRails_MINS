require 'test_helper'

class NthuCourseControllerTest < ActionDispatch::IntegrationTest
  test "should post index" do
    post nthu_course_index_url
    assert_response :success
  end

  test "should get show" do
    get nthu_course_url
    assert_response :success
  end

end
