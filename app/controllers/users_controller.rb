class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.password = password_params[:password]
    if @user.save && password_params[:password].length>0
      session[:user_id] = @user.id
      redirect_to '/'
    else
      flash[:notice] = "Please fill out all fields before submitting form"
      @user = User.new
      render :new
    end
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email_address)
  end

  def password_params
    params.require(:user).permit(:password)
  end
end
