class HomeController < ApplicationController

  def index
    if user_signed_in?
      render :profile
    end
  end

  def profile
    
  end

end
