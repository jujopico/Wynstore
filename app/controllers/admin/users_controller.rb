class Admin::UsersController < Admin::BaseController
    def index
        @users = User.all
    end

    def show 
        @user = User.find(params[:id])
        @orders = @user.orders.map do |order|
            {
                id: order.id,
                total: order.total,
                items: order.cart.items.map do |item| 
                    {
                        item_name: item.item_name,
                        item_quantity: item.quantity,
                        item_sizes: item.item_sizes,


                        
                        
                    }
                end
            }
        end
    end 
end