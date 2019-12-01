class Admin::OrdersController < Admin::BaseController
  before_action :set_order, only: [:show, :edit, :update]
  def index
      @users = User.all
      @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
    @cart_items = @order.cart.cart_items
    @user = @order.user
  end

  def edit 
    @statuses = [['Pending', 0], ['Ready', 1], ['Recieved', 2]];
  end 

  def update 
    @order.update(order_status: params[:order_status].to_i)
    redirect_to admin_orders_path
  end 

  private 
  def set_order 
      @order = Order.find(params[:id])
  end 

end
