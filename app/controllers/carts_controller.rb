class CartsController < ApplicationController
  def show
    @cart = Cart.find(params[:id])
    @cartItems = @cart.cart_items
    @user = @cart.user
    @profile = @cart.user&.profile&.name
  end
end