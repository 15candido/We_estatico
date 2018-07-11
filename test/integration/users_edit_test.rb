
require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michael)
  end

  test "unsuccessful edit" do
    get edit_user_path(@user)
    assert_template 'users/edit'
    nome = "tutorial estagio"
    email = "estagio@gmail.com"
    patch user_path(@user), params: { user: { name: nome, email: email,
                                              password:              "",
                                              password_confirmation: "" } }


assert_not flash.empty?
assert_redirected_to @user
@user.reload
assert_equal nome, @user.nome
assert_equal email, @user.email
  end
end
