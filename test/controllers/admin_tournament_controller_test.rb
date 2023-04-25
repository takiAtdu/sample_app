require "test_helper"

class AdminTournamentControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admin_tournament_show_url
    assert_response :success
  end

  test "should get index" do
    get admin_tournament_index_url
    assert_response :success
  end

  test "should get edit" do
    get admin_tournament_edit_url
    assert_response :success
  end

  test "should get new" do
    get admin_tournament_new_url
    assert_response :success
  end
end
