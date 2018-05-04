class HomeController < ApplicationController

  def index

    if user_signed_in?
      @contractors = Contractor.where(user_id: current_user.id)
    	if @contractors.count > 0
    		redirect_to contractor_path(current_user.id)
    	else
    		render :profile
    	end

    end

    @searchable = Searchable.new

  end


  def profile
    if user_signed_in?
      @contractors = Contractor.where(user_id: current_user.id)
    	@contractors.count
    	if @contractors.count > 0
    		redirect_to contractor_path(current_user.id)
    	end
    end

  end



  private

	  def set_contractor
      
	  end

end
