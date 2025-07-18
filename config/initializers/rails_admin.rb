RailsAdmin.config do |config|

  config.model 'MorningForm' do
    edit do
      exclude_fields :user
    end
    create do
      exclude_fields :user
    end
  end

  config.model 'AfternoonForm' do
    edit do
      exclude_fields :user
    end
    create do
      exclude_fields :user
    end
  end

  config.main_app_name = ["Daily Control", ""]

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    
    

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
