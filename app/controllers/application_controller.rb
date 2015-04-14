class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :authenticate_user!

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to "/users/edit", :notice => exception.message
  end

  protected

  def configure_permitted_parameters
    # devise_parameter_sanitizer.for(:sign_up) do |u|
    #   u.permit(:first_name, :last_name, :email, :password,
    #    :password_confirmation).concat([:profile_name, :slug])
    # end
    # devise_parameter_sanitizer.for(:account_update) do |u|
    #   u.permit(:first_name, :last_name, :email, :password,
    #    :current_password, :password_confirmation, :profile_name, :slug)
    # end
  end
end
