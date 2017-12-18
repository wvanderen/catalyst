require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Workspace
  class Application < Rails::Application
    config.assets.paths << Rails.root.join("vendor", "assets", "bower_components")
    
    #Telling asset pipeline about angular directories
    config.assets.paths << Rails.root.join("app", "assets", "javascripts", "ng-app", "controllers")
    config.assets.paths << Rails.root.join("app", "assets", "javascripts", "ng-app", "directives")
    config.assets.paths << Rails.root.join("app", "assets", "javascripts", "ng-app", "filters")
    config.assets.paths << Rails.root.join("app", "assets", "javascripts", "ng-app", "models")
    config.assets.paths << Rails.root.join("app", "assets", "javascripts", "ng-app", "modules")
    config.assets.paths << Rails.root.join("app", "assets", "javascripts", "ng-app", "services")
    config.assets.paths << Rails.root.join("app", "assets", "javascripts", "ng-app", "templates")
    
    config.assets.precompile += %w(app.js)
    config.assets.precompile += %w(HomeCtrl.js)
    

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
  end
end
