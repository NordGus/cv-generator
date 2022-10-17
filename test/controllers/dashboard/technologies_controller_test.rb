require "test_helper"

class Dashboard::TechnologiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_technologies_index_url
    assert_response :success
  end

  test "should get new" do
    get dashboard_technologies_new_url
    assert_response :success
  end

  test "should get create" do
    get dashboard_technologies_create_url
    assert_response :success
  end

  test "should get edit" do
    get dashboard_technologies_edit_url
    assert_response :success
  end

  test "should get update" do
    get dashboard_technologies_update_url
    assert_response :success
  end
end
