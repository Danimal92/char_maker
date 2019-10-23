require 'test_helper'

class SkillControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get skill_index_url
    assert_response :success
  end

  test "should get show" do
    get skill_show_url
    assert_response :success
  end

  test "should get new" do
    get skill_new_url
    assert_response :success
  end

  test "should get create" do
    get skill_create_url
    assert_response :success
  end

  test "should get edit" do
    get skill_edit_url
    assert_response :success
  end

  test "should get update" do
    get skill_update_url
    assert_response :success
  end

  test "should get destroy" do
    get skill_destroy_url
    assert_response :success
  end

end
