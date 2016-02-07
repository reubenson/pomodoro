class RootController < ApplicationController
  def index
    if current_user
      render :index
    else
      render :homepage
    end
  end
end
