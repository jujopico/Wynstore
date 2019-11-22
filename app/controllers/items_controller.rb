class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show 
    @item = Item.find(params[:id])
    @reviews = Review.where(item_id: @item.id)
  end 

end