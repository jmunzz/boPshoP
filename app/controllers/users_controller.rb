class UsersController < ApplicationController
  before_action :authenticate_user!
private 

  def user_params
    params.require(:user).permit(:username,:records,:location, :email)
  end


public

  def show
    @user = current_user
    @record = Record.new()
  end

  def new
    @user = User.new()
  end

  def index
    @users = User.all
  end

  def create

      @user = current_user
      flash[:sucess]=  'your user was created'
      # redirect_to user_path(@user)
     end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to
  end

end


