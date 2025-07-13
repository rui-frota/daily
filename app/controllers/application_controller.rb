class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, alert: "Acesso não autorizado."
  end
end
