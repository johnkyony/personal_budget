Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # Code is not reloaded between requests.
  config.cache_classes = true

  # Eager load code on boot. This eager loads most of Rails and
  # your application in memory, allowing both threaded web servers
  # and those relying on copy on write to perform better.
  # Rake tasks automatically ignore this option for performance.
  config.eager_load = true

  # Full error reports are disabled and caching is turned on.
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Enable Rack::Cache to put a simple HTTP cache in front of your application
  # Add `rack-cache` to your Gemfile before enabling this.
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 3b9b50d0a2f2ba0f89deb6487adae46e55b9b7d7
  # For large-scale production use, consider using a caching reverse proxy like
  # NGINX, varnish or squid.
  # config.action_dispatch.rack_cache = true

  # Disable serving static files from the `/public` folder by default since
  # Apache or NGINX already handles this.
  config.serve_static_files = ENV['RAILS_SERVE_STATIC_FILES'].present?
<<<<<<< HEAD
=======
=======
  # For large-scale production use, consider using a caching reverse proxy like nginx, varnish or squid.
  # config.action_dispatch.rack_cache = true

  # Disable Rails's static asset server (Apache or nginx will already do this).
  config.serve_static_assets = false
>>>>>>> c919cddc801cda0445392fd75877d346c38fb89d
>>>>>>> 3b9b50d0a2f2ba0f89deb6487adae46e55b9b7d7

  # Compress JavaScripts and CSS.
  config.assets.js_compressor = :uglifier
  # config.assets.css_compressor = :sass

  # Do not fallback to assets pipeline if a precompiled asset is missed.
  config.assets.compile = false

<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 3b9b50d0a2f2ba0f89deb6487adae46e55b9b7d7
  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  # `config.assets.precompile` and `config.assets.version` have moved to config/initializers/assets.rb

  # Specifies the header that your server uses for sending files.
  # config.action_dispatch.x_sendfile_header = 'X-Sendfile' # for Apache
  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # for NGINX
<<<<<<< HEAD
=======
=======
  # Generate digests for assets URLs.
  config.assets.digest = true

  # `config.assets.precompile` has moved to config/initializers/assets.rb

  # Specifies the header that your server uses for sending files.
  # config.action_dispatch.x_sendfile_header = "X-Sendfile" # for apache
  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # for nginx
>>>>>>> c919cddc801cda0445392fd75877d346c38fb89d
>>>>>>> 3b9b50d0a2f2ba0f89deb6487adae46e55b9b7d7

  # Force all access to the app over SSL, use Strict-Transport-Security, and use secure cookies.
  # config.force_ssl = true

<<<<<<< HEAD
  # Use the lowest log level to ensure availability of diagnostic information
  # when problems arise.
  config.log_level = :debug
=======
<<<<<<< HEAD
  # Use the lowest log level to ensure availability of diagnostic information
  # when problems arise.
  config.log_level = :debug
=======
  # Set to :debug to see everything in the log.
  config.log_level = :info
>>>>>>> c919cddc801cda0445392fd75877d346c38fb89d
>>>>>>> 3b9b50d0a2f2ba0f89deb6487adae46e55b9b7d7

  # Prepend all log lines with the following tags.
  # config.log_tags = [ :subdomain, :uuid ]

  # Use a different logger for distributed setups.
  # config.logger = ActiveSupport::TaggedLogging.new(SyslogLogger.new)
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
  config.logger = Logger.new(STDOUT)
>>>>>>> c919cddc801cda0445392fd75877d346c38fb89d
>>>>>>> 3b9b50d0a2f2ba0f89deb6487adae46e55b9b7d7

  # Use a different cache store in production.
  # config.cache_store = :mem_cache_store

  # Enable serving of images, stylesheets, and JavaScripts from an asset server.
<<<<<<< HEAD
  # config.action_controller.asset_host = 'http://assets.example.com'
=======
<<<<<<< HEAD
  # config.action_controller.asset_host = 'http://assets.example.com'
=======
  # config.action_controller.asset_host = "http://assets.example.com"

  # Precompile additional assets.
  # application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
  # config.assets.precompile += %w( search.js )
>>>>>>> c919cddc801cda0445392fd75877d346c38fb89d
>>>>>>> 3b9b50d0a2f2ba0f89deb6487adae46e55b9b7d7

  # Ignore bad email addresses and do not raise email delivery errors.
  # Set this to true and configure the email server for immediate delivery to raise delivery errors.
  # config.action_mailer.raise_delivery_errors = false

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation cannot be found).
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners.
  config.active_support.deprecation = :notify

<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
  # Disable automatic flushing of the log to improve performance.
  # config.autoflush_log = false

>>>>>>> c919cddc801cda0445392fd75877d346c38fb89d
>>>>>>> 3b9b50d0a2f2ba0f89deb6487adae46e55b9b7d7
  # Use default logging formatter so that PID and timestamp are not suppressed.
  config.log_formatter = ::Logger::Formatter.new

  # Do not dump schema after migrations.
  config.active_record.dump_schema_after_migration = false
end
