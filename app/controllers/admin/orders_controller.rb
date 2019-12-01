class Admin::OrdersController < Admin::BaseController
  def index
      @users = User.all
      @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
    @cart_items = @order.cart.cart_items
    @user = @order.user
  end


end
