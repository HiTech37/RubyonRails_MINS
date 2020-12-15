require 'test_helper'

class GuideControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get root_url
    assert_response :success
  end

end
