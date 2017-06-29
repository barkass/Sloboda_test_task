class ApplicationController < ActionController::Base

  
  def after_sign_in_path_for(resource)
    root_path
  end

  def after_sign_out_path_for(resource_or_scope)
    request.referrer
  end

  protect_from_forgery with: :exception

  before_action :authenticate_user!

end
