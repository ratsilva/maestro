class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :define_user
  layout :layout_by_resource

  protected

  def define_user
    @users = User.all
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  
  private

  def layout_by_resource
    if devise_controller?
      "homepage"
    else
      "application"
    end
  end
end
