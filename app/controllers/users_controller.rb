class UsersController < ApplicationController
private 

  def user_params
    params.require(:user).permit(:username,:records,:location, :email)
  end


public

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new()
  end

  def index
    @users = User.all
  end

  def create

      @user = User.create(user_params)
      flash[:sucess]=  'your user was created'
      redirect_to user_path(@user)
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to
  end
end


