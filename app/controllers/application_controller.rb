class ApplicationController < ActionController::Base
 before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :first_name, :first_name_kana, :last_name, :last_name_kana, :email, :postcode, :address, :phone_number, :is_deleted])
  end

  def after_sign_in_path_for(resource)
    customers_courses_path
  end
end