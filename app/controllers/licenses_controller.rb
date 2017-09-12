class LicensesController < ApplicationController
  before_action :set_license, only: [:show, :edit, :update, :destroy]
  def index
    @licenses = License.all
  end

  def show
  end

  def new
    @license = License.new
  end

  def edit
  end

  def create
    @license = License.new(license_params)
    @license.user_id = current_user.id
    respond_to do |format|
      if @license.save
        format.html { redirect_to @license, notice: 'License was successfully created.' }
        format.json { render :show, status: :created, location: @license }
      else
        format.html { render :new }
        format.json { render json: @license.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @license.update(license_params)
        format.html { redirect_to @license, notice: 'License was successfully updated.' }
        format.json { render :show, status: :ok, location: @license }
      else
        format.html { render :edit }
        format.json { render json: @license.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @license.destroy
    respond_to do |format|
      format.html { redirect_to licenses_url, notice: 'License was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_license
      @license = License.find(params[:id])
    end

    def license_params
      params.require(:license).permit(:ltype, :lNumbe, :exdate, :contractor_id, :user_id, :photowithlicense)
    end
end
