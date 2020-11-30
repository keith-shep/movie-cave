require 'test_helper'

class CinemasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cinemas_index_url
    assert_response :success
  end

  test "should get show" do
    get cinemas_show_url
    assert_response :success
  end

  test "should get new" do
    get cinemas_new_url
    assert_response :success
  end

  test "should get create" do
    get cinemas_create_url
    assert_response :success
  end

  test "should get edit" do
    get cinemas_edit_url
    assert_response :success
  end

  test "should get update" do
    get cinemas_update_url
    assert_response :success
  end

end
