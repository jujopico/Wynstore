class CartsController < ApplicationController
  def show
    @cart = Cart.find_by(user:current_user)
    @cartItems = @cart.cart_items
    @user = @cart.user
  end
end