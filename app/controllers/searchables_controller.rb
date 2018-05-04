class SearchablesController < ApplicationController
  before_action :set_searchable, only: [:show, :edit, :update, :destroy]

  def index
    @searchables = Searchable.all
  end

  def show
  end

  def new
    @searchable = Searchable.new
  end

  def edit
  end

  def create
    @searchable = Searchable.new(searchable_params)

    respond_to do |format|
      if @searchable.save
        format.html { redirect_to @searchable, notice: 'Searchable was successfully created.' }
        format.json { render :show, status: :created, location: @searchable }
      else
        format.html { render :new }
        format.json { render json: @searchable.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @searchable.update(searchable_params)
        format.html { redirect_to @searchable, notice: 'Searchable was successfully updated.' }
        format.json { render :show, status: :ok, location: @searchable }
      else
        format.html { render :edit }
        format.json { render json: @searchable.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @searchable.destroy
    respond_to do |format|
      format.html { redirect_to searchables_url, notice: 'Searchable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_searchable
      @searchable = Searchable.find(params[:id])
    end

    def searchable_params
      params.require(:searchable).permit(:keyword, :location)
    end
end
