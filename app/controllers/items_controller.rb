class ItemsController < ApplicationController

  def index
    @items = Item.all.uniq { |item| item.item_ref }
  end

  def show 
    @item = Item.find(params[:id])
    @sizes = @item.sizes.map { |size| size.size_name }
    @reviews = Review.where(item_id: @item.id)
  end
end
  