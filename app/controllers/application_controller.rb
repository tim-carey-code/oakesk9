class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def authenticate_admin!
    authenticate_user!
    unless current_user.admin?
      redirect_to :root, status: 302, alert: "You are unauthorized to access that content"
    end
  end
  

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end
end
