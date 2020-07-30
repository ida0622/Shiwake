class ItemsController < ApplicationController
  def new
    @item = Item.new

  end

  def index
    @categories = Category.all
    @places = Place.all
    @items = Item.order("expiration_date")
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to new_item_path
    else
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])

    if @item.update(item_params)
      redirect_back(fallback_location: 'something')
    else
      render :index
    end

  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to items_path

  end

  private

  def item_params
    params.require(:item).permit(:name, :count, :category_id, :place_id, :expiration_date)
  end
end
