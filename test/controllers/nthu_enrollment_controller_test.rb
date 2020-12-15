require 'test_helper'

class NthuEnrollmentControllerTest < ActionDispatch::IntegrationTest
  test "should post renew" do
    post nthu_enrollment_url
    assert_response :success
  end

end
