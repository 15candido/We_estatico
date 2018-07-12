require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest

  def setup
  @user = users(:silva)
  @other_user = users(:pedro)
  end
  test "should redirect index when not logged in" do
    get users_path
    assert_redirected_to login_url
  end
  test "should get new" do
    get new_user_path
    assert_response :success
  end
  test "should redirect edit when not logged in" do
    get edit_user_path(@user)
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test "should redirect edit when in as wrong user" do
    get edit_user_path(@other_user)
    get edit_user_path(@user)
    assert flash.empty?
    assert_redirected_to root_url
  end
  test "should redirect update when not logged in as wrong user" do
    log_in_as(@user)
    patch user_path(@user), params: { user: { nome: @user.nome, email: @user.email } }
    assert flash.empty?
    assert_redirected_to root_url
  end
  test "should redirect update when not logged in" do
    patch user_path(@user), params: { user: { nome: @user.nome, email: @user.email} }
    assert_not flash.empty?
    assert_redirected_to login_url
  end
  test "should not allwow the adimn attribuute to be edited via web" do
    log_in_as(@other_user)
    assert_not @other_user.admin?
    patch user_path(@other_user), params: { user: {
                                  password: FILL_IN,
                                  password_confirmation: FILL_IN, admin: FILL_IN} }
  assert_not @other_user.FILL_IN.admin?
  end

  test"should redirect destroy when not logged in " do
     assert_no_difference 'User.count' do
     delete user_path(@user)
    end
    assert_redirected_to login_url
   end
    test "should redirect when logged in as nom-admin" do
      log_in_as(@other_user)
      assert_no_difference 'User.count' do
        delete user_path(@user)
      end
      assert_redirected_to root_url
    end
 end
