class HomeController < ApplicationController

	before_action :set_contractor

  def index
    if user_signed_in?
    end

	if user_signed_in?
    	@contractors.count
    	if @contractors.count > 0
    		redirect_to contractor_path(current_user.id)
    	else
    		render :profile
    	end
    end


  end

  def profile
    if user_signed_in?
    	@contractors.count
    	if @contractors.count > 0
    		redirect_to contractor_path(current_user.id)
    	end
    end

  end



  private

	  def set_contractor
	    @contractors = Contractor.where(user_id: current_user.id)
	  end

end
