require 'test_helper'

class Users::CommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_comments_index_url
    assert_response :success
  end

  test "should get show" do
    get users_comments_show_url
    assert_response :success
  end

  test "should get new" do
    get users_comments_new_url
    assert_response :success
  end

  test "should get edit" do
    get users_comments_edit_url
    assert_response :success
  end

  test "should get update" do
    get users_comments_update_url
    assert_response :success
  end

  test "should get destroy" do
    get users_comments_destroy_url
    assert_response :success
  end

end
