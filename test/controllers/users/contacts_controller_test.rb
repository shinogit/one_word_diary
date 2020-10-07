require 'test_helper'

class Users::ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_contacts_index_url
    assert_response :success
  end

  test "should get show" do
    get users_contacts_show_url
    assert_response :success
  end

  test "should get edit" do
    get users_contacts_edit_url
    assert_response :success
  end

  test "should get update" do
    get users_contacts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get users_contacts_destroy_url
    assert_response :success
  end

end
