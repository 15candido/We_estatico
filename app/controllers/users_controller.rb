class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "seja ben-vindo a nossa página"
      redirect_to @user
    else
      render 'new'
    end
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user= User.find(params[:id])
    if @user.update_attributes(user_params)
    flash[:success] = "profile update"
    redirect_to @user
    else
      render 'edit'
    end
  end
  private
  def user_params
    params.require(:user).permit(:nome, :email, :password,
                                   :password_confirmation)
  end
end
