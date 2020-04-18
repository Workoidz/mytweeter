require 'test_helper'

class UserFollowControllerTest < ActionDispatch::IntegrationTest
  test "should get change_status" do
    get user_follow_change_status_url
    assert_response :success
  end

end
