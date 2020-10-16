require 'test_helper'

class CatsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get cats_show_url
    assert_response :success
  end

  test "should get create" do
    get cats_create_url
    assert_response :success
  end

  test "should get update" do
    get cats_update_url
    assert_response :success
  end

  test "should get destroy" do
    get cats_destroy_url
    assert_response :success
  end

end
