class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by_email_address(params[:email_address])
    if @user && @user.password == params[:password]
      session[:user_id] = @user.id
      redirect_to '/'
    else
      flash[:notice] = "Sorry, your email or password was invalid! Please try again."
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end
