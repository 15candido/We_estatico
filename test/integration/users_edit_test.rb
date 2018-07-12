
require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:silva)
  end
  test "unsuccessful edit" do
    get edit_user_path(@user)
    log_in_as(@user)
    assert_template 'users/edit'
    patch user_path(@user), params: {user: { nome: "", email: "silva@estagio.com",
                                    password: "model", password_confirmation: "mode" } }
    assert_template 'user/edit'
end
test "Successful edit" do
      get edit_user_path(@user)
      assert_template 'users/edit'
      nome = "silva"
      email = "silva@estagio.com"
      patch user_path(@user), params: {user: { nome: nome, email: email,
                                      password: "", password_confirmation: "" } }
      assert_not flash.empty?
      assert_redirect_to @user
      @user.reload
      assert_equal nome, @user.nome
      assert_equal email, @user.eamil

end
end
