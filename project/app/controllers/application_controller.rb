class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

  helper_method :current_user
  def current_user
    @current_user ||= User.find(session[:current_userid]) if session[:current_userid]
  end
end
