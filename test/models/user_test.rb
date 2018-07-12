require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(nome: "exemplo user", email: "userexemplo@gmail.com", password: "perez", password_confirmation: "perez")
  end

  test "authenticated? should return false for user with nil digest" do
    assert_not @user.authenticated?('')
  end
end
