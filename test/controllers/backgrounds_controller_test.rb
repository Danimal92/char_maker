require 'test_helper'

class BackgroundsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get backgrounds_index_url
    assert_response :success
  end

  test "should get new" do
    get backgrounds_new_url
    assert_response :success
  end

  test "should get create" do
    get backgrounds_create_url
    assert_response :success
  end

  test "should get show" do
    get backgrounds_show_url
    assert_response :success
  end

  test "should get update" do
    get backgrounds_update_url
    assert_response :success
  end

  test "should get edit" do
    get backgrounds_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get backgrounds_destroy_url
    assert_response :success
  end

end
