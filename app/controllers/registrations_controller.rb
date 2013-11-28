class RegistrationsController < Devise::RegistrationsController
  before_filter :update_sanitized_params, if: :devise_controller?

  layout('application.html.haml')

  def update_sanitized_params
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(registration_params)}
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(registration_params)
    end
  end

  private

  def registration_params
    [
      :name,
      :email,
      :password,
      :password_confirmation,
      :current_password,
      :avatar
    ]
  end
end
