class BidsController < ApplicationController
  before_action :set_bid, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  before_action :set_job

  def show
  end

  def new
    @bid = Bid.new
  end

  def edit
  end

  def create
    @bid = Bid.new(bid_params)
    @bid.user_id = current_user.id
    @bid.job_id = @job.id

    if @bid.save
      redirect_to @job, notice: 'Bid was successfully created.'
    else
      render :new
    end
  end

  def update
    if @bid.update(bid_params)
      redirect_to @job, notice: 'Bid was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @bid.destroy
    redirect_to @job, notice: 'Bid was successfully destroyed.'
  end

  private

    def set_bid
      @bid = Bid.find(params[:id])
    end

    def set_job
      @job = Job.find(params[:job_id])
    end

    def bid_params
      params.require(:bid).permit(:hourly_rate, :total_rate, :note, :user_id, :job_id)
    end
end
