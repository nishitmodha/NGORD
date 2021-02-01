class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
  
    def configure_permitted_parameters
      # devise_parameter_sanitizer.permit(:sign_up, keys: [:username, roles: [] ])
      devise_parameter_sanitizer.permit(:sign_up)  { |u| u.permit(  :username, :email, :password, :password_confirmation, roles: [] ) }
      # devise_parameter_sanitizer.permit(:account_update, keys: [:username, roles: [] ])
    end
end


