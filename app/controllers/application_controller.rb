class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  SuggestGrid::Configuration.basic_auth_user_name = 'osman'
  SuggestGrid::Configuration.basic_auth_password = 'key1'

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:name, :age]
  end
end
