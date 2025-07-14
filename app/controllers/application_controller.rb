class ApplicationController < ActionController::Base
  before_action :set_current_user

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, alert: "Acesso não autorizado."
  end

  private
  def set_current_user
    Current.user = current_user if defined?(Current)
  end
end
