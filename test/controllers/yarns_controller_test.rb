require "test_helper"

class YarnsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get yarns_index_url
    assert_response :success
  end
end
