class PlacesController < ApplicationController
  def new
    @place = Place.new
    @places = Place.all
  end

  def show
    @categories = Category.all
    @place = Place.find(params[:id])
    @items = @place.items.order("expiration_date")
    @places = Place.all
  end

  def create
    @place = Place.new(place_params)
    if @place.save
      redirect_to items_path
    else
      render :new
    end
  end

  def update

  end

  def destroy
    place = Place.find(params[:id])
    place.destroy
    redirect_to new_place_path

  end

  private

  def place_params
    params.require(:place).permit(:name)
  end
end
