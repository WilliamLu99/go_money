require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get login" do
    get login_url
    assert_response :success
  end

  test "should be able to loign" do
    post login_url, params: { email: @user.email, password: "password" }

    assert_redirected_to user_url(@user)
    assert_equal @user.id, session[:user_id]
  end

  test "should be able to logout" do
    post login_url, params: { email: @user.email, password: "password" }
    assert_redirected_to user_url(@user)
    assert_equal @user.id, session[:user_id]

    post logout_url
    assert_nil session[:user_id]
    assert_redirected_to login_path
  end
end
