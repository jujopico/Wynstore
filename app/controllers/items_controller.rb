class ItemsController < ApplicationController
  def index
    @items = Item.all
    @items_by_category = Item.all.group_by { |item| item.category }
    @category_keys = @items_by_category.keys

  end

  def show 
    @item = Item.find(params[:id])
    @sizes = @item.sizes.map { |size| size.size_name }
    @reviews = Review.where(item_id: @item.id)
    @poses = @item.item_images
  end
end
