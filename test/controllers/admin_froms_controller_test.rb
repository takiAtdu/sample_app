require "test_helper"

class AdminFromsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admin_froms_show_url
    assert_response :success
  end

  test "should get index" do
    get admin_froms_index_url
    assert_response :success
  end

  test "should get edit" do
    get admin_froms_edit_url
    assert_response :success
  end

  test "should get new" do
    get admin_froms_new_url
    assert_response :success
  end
end
