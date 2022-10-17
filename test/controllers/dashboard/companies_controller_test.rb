require "test_helper"

class Dashboard::CompaniesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_companies_index_url
    assert_response :success
  end

  test "should get new" do
    get dashboard_companies_new_url
    assert_response :success
  end

  test "should get create" do
    get dashboard_companies_create_url
    assert_response :success
  end

  test "should get edit" do
    get dashboard_companies_edit_url
    assert_response :success
  end

  test "should get update" do
    get dashboard_companies_update_url
    assert_response :success
  end
end
