class CartItemsController < ApplicationController
  
  def create
    @item = Item.find(params[:item_id])
    @size = Size.find_by(size_name:params[:commit])
    @item_size = ItemSize.find_by(item:@item, size:@size)
    @cart = current_or_guest_user.carts.last
    @cart_item = CartItem.create(cart:@cart, item_size:@item_size)
    if @cart_item.save
      redirect_to item_path(@item)
    else
      puts @cart_item.errors.full_messages.to_sentence.capitalize
    end
  end
  
  def destroy
    @item_to_destroy = CartItem.find_by_id(params[:id])
    @item_to_destroy.destroy
    redirect_back fallback_location: "/carts"
  end

end