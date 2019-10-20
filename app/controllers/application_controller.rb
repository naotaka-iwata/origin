class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      added_attrs = [ :club_name,:club_description,:club_college,:club_number,:club_place,:club_frequency,:club_twitter,:club_instagram, :img, :email, :password, :password_confirmation　]
      devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
      devise_parameter_sanitizer.permit :account_update, keys: added_attrs
      devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
    end

end
