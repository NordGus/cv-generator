require "test_helper"

class Dashboard::Data::EducationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_data_education_index_url
    assert_response :success
  end

  test "should get new" do
    get dashboard_data_education_new_url
    assert_response :success
  end

  test "should get create" do
    get dashboard_data_education_create_url
    assert_response :success
  end

  test "should get edit" do
    get dashboard_data_education_edit_url
    assert_response :success
  end

  test "should get update" do
    get dashboard_data_education_update_url
    assert_response :success
  end

  test "should get destroy" do
    get dashboard_data_education_destroy_url
    assert_response :success
  end
end
