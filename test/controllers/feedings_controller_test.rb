require 'test_helper'

class FeedingsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get feedings_create_url
    assert_response :success
  end

  test "should get destroy" do
    get feedings_destroy_url
    assert_response :success
  end

end
