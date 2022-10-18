require "test_helper"

class Dashboard::Data::ResumesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_data_resumes_index_url
    assert_response :success
  end

  test "should get show" do
    get dashboard_data_resumes_show_url
    assert_response :success
  end

  test "should get new" do
    get dashboard_data_resumes_new_url
    assert_response :success
  end

  test "should get create" do
    get dashboard_data_resumes_create_url
    assert_response :success
  end

  test "should get edit" do
    get dashboard_data_resumes_edit_url
    assert_response :success
  end

  test "should get update" do
    get dashboard_data_resumes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get dashboard_data_resumes_destroy_url
    assert_response :success
  end
end
