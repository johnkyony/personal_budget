require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 3b9b50d0a2f2ba0f89deb6487adae46e55b9b7d7
module Personalbudget
  class Application < Rails::Application
     
  config.generators do |g|
    g.test_framework :minitest, spec: true, fixture: true
    g.helper false
    g.assets false
    g.view_specs false
  end

<<<<<<< HEAD
=======
=======
module Rails4Example
  class Application < Rails::Application
>>>>>>> c919cddc801cda0445392fd75877d346c38fb89d
>>>>>>> 3b9b50d0a2f2ba0f89deb6487adae46e55b9b7d7
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
<<<<<<< HEAD

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
=======
<<<<<<< HEAD

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
=======
>>>>>>> c919cddc801cda0445392fd75877d346c38fb89d
>>>>>>> 3b9b50d0a2f2ba0f89deb6487adae46e55b9b7d7
  end
end
