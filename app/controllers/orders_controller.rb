class OrdersController < ApplicationController
    def index
        @orders = Order.all
    end

    def show
    end

    def new 
        client = Taxjar::Client.new(api_key: "2406573fd9359f2f0e1fd6410c607428")
        @profile = safe_current_or_guest_user.profile
        @rates = client.rates_for_location(@profile.zipcode).combined_rate
        @cart = Cart.find(params[:cart_id])
        @cart_items = @cart.cart_items
        @total = @cart.items.reduce(0) { |acc, item| acc + item.price.round(2) }
        @total = @total.round(2)
        @order = Order.new
    end 

    def create 
        @user = safe_current_or_guest_user
        @cart = Cart.find(params[:cart_id])
        total = @cart.items.reduce(0) { |acc, item| acc + item.price.round(2) }
        total = total.round(2)
        shipping_info_id = User.find(@user.id).profile
        order = Order.new(:cart_id => @cart.id,
                          :user_id => @user.id,
                          :total => total,
                          :shipping_info_id => shipping_info_id)
        cart = Cart.find(params[:cart_id])
        order.user = safe_current_or_guest_user
        order.cart = cart
        order.total = total
        Cart.create(user: safe_current_or_guest_user)
        stripe_total = (order.total * 100).round(2).to_i 

    customer = Stripe::Customer.create(
        :email => 'some@guy.com',
        :card  => params[:stripeToken]

    )

    charge = Stripe::Charge.create(
        :customer => customer.id,
        :amount => stripe_total,
        :description => 'description',
        :currency => 'usd'
    )

    redirect_to root_path if order.save
    
    rescue Stripe::CardError => e
        flash[:error] = e.message 
        redirect_to charges_path
    end 
end
