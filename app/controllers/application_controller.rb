class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  # before_action :set_profile
  helper_method :safe_current_or_guest_user
  before_action :set_cart

  def safe_current_or_guest_user
    current_or_guest_user
  rescue
    current_user
  end

  def set_profile
    @profile = safe_current_or_guest_user&.profile || Profile.find_by(id: session[:profile_id]) || Profile.new
  end

  protected

  def set_cart
    @cart = Cart.find_or_create_by(user:safe_current_or_guest_user)
  end

  def after_sign_in_path_for(resource)
    if resource.admin
      admin_root_url
    else
      root_url
    end
  end
end
