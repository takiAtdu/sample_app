require "test_helper"

class AdminMoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admin_movies_show_url
    assert_response :success
  end

  test "should get index" do
    get admin_movies_index_url
    assert_response :success
  end

  test "should get edit" do
    get admin_movies_edit_url
    assert_response :success
  end

  test "should get new" do
    get admin_movies_new_url
    assert_response :success
  end
end
