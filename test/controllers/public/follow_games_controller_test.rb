require "test_helper"

class Public::FollowGamesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get public_follow_games_create_url
    assert_response :success
  end

  test "should get destroy" do
    get public_follow_games_destroy_url
    assert_response :success
  end
end
