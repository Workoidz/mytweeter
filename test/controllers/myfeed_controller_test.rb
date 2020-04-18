require 'test_helper'

class MyfeedControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get myfeed_show_url
    assert_response :success
  end

end
