# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def authenticate_admin!
    authenticate_user!
    return if current_user.admin?

    redirect_to :root, status: 302, alert: 'You are unauthorized to access that content'
  end

  def authenticate_user!
    redirect_to new_user_session_path, alert: 'You must login' unless user_signed_in?
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name])
  end
end
