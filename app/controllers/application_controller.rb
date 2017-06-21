class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_variables
  layout :layout_by_resource

  def set_variables
      @notifications = Notification.search_nao_lidas(current_user.id)
  end

  protected

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
