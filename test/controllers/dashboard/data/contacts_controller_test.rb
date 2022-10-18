require "test_helper"

class Dashboard::Data::ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_data_contacts_index_url
    assert_response :success
  end

  test "should get new" do
    get dashboard_data_contacts_new_url
    assert_response :success
  end

  test "should get create" do
    get dashboard_data_contacts_create_url
    assert_response :success
  end

  test "should get edit" do
    get dashboard_data_contacts_edit_url
    assert_response :success
  end

  test "should get update" do
    get dashboard_data_contacts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get dashboard_data_contacts_destroy_url
    assert_response :success
  end
end
