class Admin::UsersController < Admin::BaseController
    def index
        @users = User.all
    end

    def show 
        @user = User.find(params[:id])
        @orders = @user.orders.preload(:cart).map do |order|
            {
                id: order.id,
                total: order.total,
                items: order.cart.cart_items.preload(:item_size).map do |item| 
                    {
                        item_name: item.item_size.item.item_name,
                        item_size: item.item_size.size.size_name,
                        item_price: item.item_size.item.price,     
                    }
                end
            }
        end
        @profile = User.find(params[:id]).profile
    end

end