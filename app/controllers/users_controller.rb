class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save # returns truthy on success
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @user = User.find params[:id]
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    user = User.find params[:id]
    if user.id = @current_user.id
      user.update user_params
    end
    redirect_to root_path
  end

  def destroy
    user = User.find params[:id]
    if user.id = @current_user.id
      user.bleeps.each do |bleep|
        bleep.destroy
      end
      @current_user = nil
      user.destroy
    end
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
