require "test_helper"

class WearsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get wears_create_url
    assert_response :success
  end

  test "should get destroy" do
    get wears_destroy_url
    assert_response :success
  end

  test "should get update" do
    get wears_update_url
    assert_response :success
  end
end
