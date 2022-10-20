require "test_helper"

class Dashboard::Data::LanguagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_data_languages_index_url
    assert_response :success
  end

  test "should get new" do
    get dashboard_data_languages_new_url
    assert_response :success
  end

  test "should get create" do
    get dashboard_data_languages_create_url
    assert_response :success
  end

  test "should get edit" do
    get dashboard_data_languages_edit_url
    assert_response :success
  end

  test "should get update" do
    get dashboard_data_languages_update_url
    assert_response :success
  end

  test "should get destroy" do
    get dashboard_data_languages_destroy_url
    assert_response :success
  end
end
