class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :update_allowed_parameters, if: :devise_controller?

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password) }
  end
end


# devise_parameter_sanitizer.permit(:sign_up) do |user_params|
#   user_params.permit(:name, :email, :bio, :photo, :password, :posts_counter)
# end

# before_action :configure_permitted_parameters, if: :devise_controller?

# protected
