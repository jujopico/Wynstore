class OrdersController < ApplicationController
    def index
        @orders = Order.all
    end
    def show
    end

    def new 
        @cart = Cart.find(params[:cart_id])
        @cart_items = @cart.cart_items
        @total = @cart.items.reduce(0) { |acc, item| acc + item.price.round(2) }
        @total = @total.round(2)
        @order = Order.new
    end 

    def create 
        order = Order.new(order_params)
        total = @cart.items.reduce(0) { |acc, item| acc + item.price.round(2) }
        total = total.round(2)
        cart = Cart.find(params[:cart_id])
        order.user = current_user
        order.cart = cart
        order.total = total
        Cart.create(user_id: current_user.id)
        redirect_to root_path if order.save
    end 

    private 
    def order_params 
        params.require(:order).permit(:shipping_info_id)
    end 
end
