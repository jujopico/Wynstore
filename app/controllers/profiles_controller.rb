class ProfilesController < ApplicationController


  def index
  end

  def new
    @user = current_or_guest_user
    @states = 
      [
        'AL', 'AK', 'AZ', 'AR', 'CA', 'CO', 'CT', 'DE', 'FL', 'GA', 
        'HI', 'ID', 'IL', 'IN', 'IA', 'KS', 'KY', 'LA', 'ME', 'MH', 
        'MD', 'MA', 'MI', 'MN', 'MS', 'MO', 'MT', 'NE', 'NV', 'NJ', 
        'NM', 'NY', 'NC', 'ND', 'OH', 'OK', 'OR', 'PA', 'RI', 'SC', 
        'SD', 'TN', 'TX', 'UT', 'VT', 'VA', 'WA', 'WV', 'WI', 'WY'
      ]
  
  end

  def create
    @user = current_or_guest_user
    profile = Profile.new(:name             => params[:name], 
                          :address          => params[:address],
                          :zipcode          => params[:zipcode],
                          :city             => params[:city],
                          :email            => params[:email], 
                          :phone_number     => params[:phone_number], 
                          :user             => current_or_guest_user)
    redirect_to new_cart_order_path(@cart) if profile.save
  end

  private 
    # def profile_params 
    #   params[:user_id] = params[:user_id] == 'guest_user_id' ? current_or_guest_user : params[:user_id] 
    #     params.permit(:name, :shipping_address, :email, :phone_number, :user_id, :authenticity_token, :commit)
    #     return 
    # end 

end
