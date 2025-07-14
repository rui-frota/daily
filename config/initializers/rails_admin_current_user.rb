RailsAdmin::ApplicationController.class_eval do
  before_action do
    Current.user = current_user if defined?(Current)
  end
end
