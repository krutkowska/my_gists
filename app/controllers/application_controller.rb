class ApplicationController < ActionController::Base
  protect_from_forgery
  
  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    gists_path
  end
  
  def after_sign_in_path_for(resource_or_scope)
    stored_location_for(resource_or_scope) || gists_path
  end
  
end
