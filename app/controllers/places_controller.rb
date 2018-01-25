class PlacesController < ApplicationController
  def new
    @place = Place.new
  end
  
  def create
    @place = Place.create(place_params)
    if @place.errors.empty?
      redirect_to @place
    else
      render 'new'
    end
  end
  
  def show
    @place = Place.find(params[:id])
  end

  private
  def place_params
    params.require(:place).permit(:name, :address, :description)
  end
    
end