require 'test_helper'

class Admins::WordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_words_index_url
    assert_response :success
  end

  test "should get show" do
    get admins_words_show_url
    assert_response :success
  end

  test "should get edit" do
    get admins_words_edit_url
    assert_response :success
  end

  test "should get update" do
    get admins_words_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admins_words_destroy_url
    assert_response :success
  end

end
