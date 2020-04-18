require 'test_helper'

class FollowerUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @follower_user = follower_users(:one)
  end

  test "should get index" do
    get follower_users_url
    assert_response :success
  end

  test "should get new" do
    get new_follower_user_url
    assert_response :success
  end

  test "should create follower_user" do
    assert_difference('FollowerUser.count') do
      post follower_users_url, params: { follower_user: { follower_user_id: @follower_user.follower_user_id, user_id: @follower_user.user_id } }
    end

    assert_redirected_to follower_user_url(FollowerUser.last)
  end

  test "should show follower_user" do
    get follower_user_url(@follower_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_follower_user_url(@follower_user)
    assert_response :success
  end

  test "should update follower_user" do
    patch follower_user_url(@follower_user), params: { follower_user: { follower_user_id: @follower_user.follower_user_id, user_id: @follower_user.user_id } }
    assert_redirected_to follower_user_url(@follower_user)
  end

  test "should destroy follower_user" do
    assert_difference('FollowerUser.count', -1) do
      delete follower_user_url(@follower_user)
    end

    assert_redirected_to follower_users_url
  end
end
