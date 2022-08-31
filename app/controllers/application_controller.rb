class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, prepend: true


  before_action :authenticate_user!

  rescue_from CanCan::AccessDenied do |exception|
    # redirect_to root_url, :alert => exception.message
    redirect_to '/', alert: exception.message
  end

  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password)}
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:avatar, :email, :password, :current_password)}
    end
end
