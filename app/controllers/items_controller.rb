class ItemsController < ApplicationController

  def index
    @items = Item.all.uniq { |item| item.item_ref }
  end

  def show 
    @item = Item.find(params[:id])
    @sizes = ItemSize.where(item_id: @item.id).map { |item_size| item_size.size.size_name }
    @reviews = Review.where(item_id: @item.id)
  end

end