require "test_helper"

class MatchMoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get match_movies_index_url
    assert_response :success
  end

  test "should get show" do
    get match_movies_show_url
    assert_response :success
  end

  test "should get search" do
    get match_movies_search_url
    assert_response :success
  end
end
