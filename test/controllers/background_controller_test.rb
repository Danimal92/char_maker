require 'test_helper'

class BackgroundControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get background_index_url
    assert_response :success
  end

  test "should get show" do
    get background_show_url
    assert_response :success
  end

  test "should get new" do
    get background_new_url
    assert_response :success
  end

  test "should get create" do
    get background_create_url
    assert_response :success
  end

  test "should get edit" do
    get background_edit_url
    assert_response :success
  end

  test "should get update" do
    get background_update_url
    assert_response :success
  end

  test "should get destroy" do
    get background_destroy_url
    assert_response :success
  end

end
