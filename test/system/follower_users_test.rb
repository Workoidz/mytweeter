require "application_system_test_case"

class FollowerUsersTest < ApplicationSystemTestCase
  setup do
    @follower_user = follower_users(:one)
  end

  test "visiting the index" do
    visit follower_users_url
    assert_selector "h1", text: "Follower Users"
  end

  test "creating a Follower user" do
    visit follower_users_url
    click_on "New Follower User"

    fill_in "Follower user", with: @follower_user.follower_user_id
    fill_in "User", with: @follower_user.user_id
    click_on "Create Follower user"

    assert_text "Follower user was successfully created"
    click_on "Back"
  end

  test "updating a Follower user" do
    visit follower_users_url
    click_on "Edit", match: :first

    fill_in "Follower user", with: @follower_user.follower_user_id
    fill_in "User", with: @follower_user.user_id
    click_on "Update Follower user"

    assert_text "Follower user was successfully updated"
    click_on "Back"
  end

  test "destroying a Follower user" do
    visit follower_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Follower user was successfully destroyed"
  end
end
