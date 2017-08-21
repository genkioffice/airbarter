class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:facebook_picture_url])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:facebook_picture_url])
    devise_parameter_sanitizer.permit(:account_update, keys: [:facebook_picture_url])
  end
end
