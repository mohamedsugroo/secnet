class ContractorsController < ApplicationController
  before_action :set_contractor, only: [:show, :edit, :update, :destroy]

  def index
    @contractors = Contractor.all
  end

  def show
  end

  def new
    @contractor = Contractor.new
    @contractor.user_id = current_user.id
  end

  def edit
  end

  def create
    @contractor = Contractor.new(contractor_params)
    @contractor.user_id = current_user.id

    respond_to do |format|
      if @contractor.save
        format.html { redirect_to @contractor, notice: 'Contractor was successfully created.' }
        format.json { render :show, status: :created, location: @contractor }
      else
        format.html { render :new }
        format.json { render json: @contractor.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @contractor.update(contractor_params)
        format.html { redirect_to @contractor, notice: 'Contractor was successfully updated.' }
        format.json { render :show, status: :ok, location: @contractor }
      else
        format.html { render :edit }
        format.json { render json: @contractor.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @contractor.destroy
    respond_to do |format|
      format.html { redirect_to contractors_url, notice: 'Contractor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_contractor
      @contractor = Contractor.find(params[:id])
    end

    def contractor_params
      params.require(:contractor).permit(:first_name, :last_name, :avatar, :gender, :dob, :firstline_address, :postcode, :city, :county, :country, :mobile, :utr, :contracts_id, :right_to_work_uk, :bio, :user_id, :preferred_hourly_rate)
    end
end
