class ProfilesController < ApplicationController

  def index
  end

  def new
    @user = current_or_guest_user
  end

  def create
    @user = current_or_guest_user
    profile = Profile.new(:name             => params[:name], 
                          :shipping_address => params[:shipping_address],
                          :email            => params[:email], 
                          :phone_number     => params[:phone_number], 
                          :user_id          => params[:user_id])
    if profile.save
      redirect_to new_cart_order_path(@cart)
    end
  end

  private 
    # def profile_params 
    #   params[:user_id] = params[:user_id] == 'guest_user_id' ? current_or_guest_user : params[:user_id] 
    #     params.permit(:name, :shipping_address, :email, :phone_number, :user_id, :authenticity_token, :commit)
    #     return 
    # end 

end
