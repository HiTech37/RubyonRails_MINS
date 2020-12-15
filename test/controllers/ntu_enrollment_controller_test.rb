require 'test_helper'

class NtuEnrollmentControllerTest < ActionDispatch::IntegrationTest
  test "should post renew" do
    post ntu_enrollment_url
    assert_response :success
  end

end
