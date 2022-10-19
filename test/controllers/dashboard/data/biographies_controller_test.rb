require "test_helper"

class Dashboard::Data::BiographiesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get dashboard_data_biographies_show_url
    assert_response :success
  end

  test "should get create" do
    get dashboard_data_biographies_create_url
    assert_response :success
  end

  test "should get edit" do
    get dashboard_data_biographies_edit_url
    assert_response :success
  end

  test "should get update" do
    get dashboard_data_biographies_update_url
    assert_response :success
  end
end
