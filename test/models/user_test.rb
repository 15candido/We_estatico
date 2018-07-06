require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(nome: "exemplo user", email: "userexemplo@gmail.com", password: "perez", password_confirmation: "perez")
  end
  test "should be valid" do
    @user.valid?
  end
#prever a duplicação de email
#  test "Endereço de email deve ser único" do
  #  duplicate_user = @user.dup
  #  duplicate_user.email = @user.email.upcase
    #@user.save
    #assert_not duplicate_user.valid?
#  end
end
