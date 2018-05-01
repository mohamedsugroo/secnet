class SearchController < ApplicationController

  def jobs_search
  	@q = Job.ransack(params[:q])
  	@results = @q.result(distinct: true)

  end

  def contractors_search
  end

end
