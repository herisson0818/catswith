require 'test_helper'

class CatFavoritesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get cat_favorites_create_url
    assert_response :success
  end

  test "should get destoroy" do
    get cat_favorites_destoroy_url
    assert_response :success
  end

end
