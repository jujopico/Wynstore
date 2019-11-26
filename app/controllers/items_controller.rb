class ItemsController < ApplicationController

  def index
    @items = Item.all.uniq { |item| item.item_ref }
  end

  def show 
    @item = Item.find(params[:id])
    @sizes = @item.sizes.map { |size| size.size_name }
    @reviews = Review.where(item_id: @item.id) #comments

    @number = Review.find(params[:id]).rating
    @stars = ('<i class="fas fa-star" aria-hidden="true"></i>'* @number + '<i class="far fa-star" aria-hidden="true"></i>'* (5 - @number)).html_safe

  end
end
  