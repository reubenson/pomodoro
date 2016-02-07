class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  protect_from_forgery with: :exception

  helper_method def current_user
    if session[:user_id]
      begin
        @user = User.find(session[:user_id])
      rescue
        session[:user_id] = nil
      end
    end
  end

end
