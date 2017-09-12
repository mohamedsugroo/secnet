class WorkhistoriesController < ApplicationController
  before_action :set_workhistory, only: [:show, :edit, :update, :destroy]

  def index
    @workhistories = Workhistory.all
  end

  def show
  end

  def new
    @workhistory = Workhistory.new
  end

  def edit
  end

  def create
    @workhistory = Workhistory.new(workhistory_params)
    @workhistory.user_id = current_user.id
    respond_to do |format|
      if @workhistory.save
        format.html { redirect_to :back, notice: 'Workhistory was successfully created.' }
        format.json { render :show, status: :created, location: @workhistory }
      else
        format.html { render :new }
        format.json { render json: @workhistory.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @workhistory.update(workhistory_params)
        format.html { redirect_to @workhistory, notice: 'Workhistory was successfully updated.' }
        format.json { render :show, status: :ok, location: @workhistory }
      else
        format.html { render :edit }
        format.json { render json: @workhistory.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @workhistory.destroy
    respond_to do |format|
      format.html { redirect_to workhistories_url, notice: 'Workhistory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_workhistory
      @workhistory = Workhistory.find(params[:id])
    end

    def workhistory_params
      params.require(:workhistory).permit(:company_name, :your_role, :start_date, :end_date, :user_id, :contractor_id, :note)
    end
end
