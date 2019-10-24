require 'test_helper'

class AuthControllerTest < ActionDispatch::IntegrationTest
  test "should get signin" do
    get auth_signin_url
    assert_response :success
  end

  test "should get verify" do
    get auth_verify_url
    assert_response :success
  end

  test "should get logout" do
    get auth_logout_url
    assert_response :success
  end

end
