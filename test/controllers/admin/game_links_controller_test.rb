require "test_helper"

class Admin::GameLinksControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admin_game_links_show_url
    assert_response :success
  end

  test "should get create" do
    get admin_game_links_create_url
    assert_response :success
  end

  test "should get update" do
    get admin_game_links_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_game_links_destroy_url
    assert_response :success
  end
end
