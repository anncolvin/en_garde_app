class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do
      |u| u.permit(
        :user_name,
        :email,
        :password,
        :password_confirmation,
        :profile_photo
      )
    end

    devise_parameter_sanitizer.permit(:account_update) do
       |u| u.permit(
         :user_name,
         :email,
         :password,
         :current_password,
         :profile_photo
       )
    end
  end
end
