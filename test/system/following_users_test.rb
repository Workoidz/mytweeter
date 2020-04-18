require "application_system_test_case"

class FollowingUsersTest < ApplicationSystemTestCase
  setup do
    @following_user = following_users(:one)
  end

  test "visiting the index" do
    visit following_users_url
    assert_selector "h1", text: "Following Users"
  end

  test "creating a Following user" do
    visit following_users_url
    click_on "New Following User"

    fill_in "Following user", with: @following_user.following_user_id
    fill_in "User", with: @following_user.user_id
    click_on "Create Following user"

    assert_text "Following user was successfully created"
    click_on "Back"
  end

  test "updating a Following user" do
    visit following_users_url
    click_on "Edit", match: :first

    fill_in "Following user", with: @following_user.following_user_id
    fill_in "User", with: @following_user.user_id
    click_on "Update Following user"

    assert_text "Following user was successfully updated"
    click_on "Back"
  end

  test "destroying a Following user" do
    visit following_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Following user was successfully destroyed"
  end
end
