class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_profile

  def set_profile
    @profile = current_user&.profile || Profile.find_by(id: session[:profile_id]) || Profile.new
  end

  protected

  def after_sign_in_path_for(resource)
    if resource.admin
      admin_root_url
    else
      root_url
    end
  end

end
