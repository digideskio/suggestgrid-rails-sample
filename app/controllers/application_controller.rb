class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  # Global SuggestGrid Variables
  $space = "space"
  $recommendation_size = 3

  # Global SuggestGrid Controllers
  $sg_action_controller = SuggestGrid::ActionController.new("osman", "key1")
  $sg_recommendation_controller = SuggestGrid::RecommendationController.new("osman", "key1")

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:name, :age]
  end
end
