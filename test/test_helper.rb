<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 3b9b50d0a2f2ba0f89deb6487adae46e55b9b7d7
ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"
require "minitest/rails/capybara"

#require "minitest/pride"
require 'minitest/reporters'
#require 'minitest/focus'
#require 'minitest/colorize'
reporter_options = { color: true}
Minitest::Reporters.use!( Minitest::Reporters::DefaultReporter.new(reporter_options), ENV, Minitest.backtrace_filter )

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!

  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
  #
end

#Capybara driver
Capybara.javascript_driver = :webkit
<<<<<<< HEAD
=======
=======
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
>>>>>>> c919cddc801cda0445392fd75877d346c38fb89d
>>>>>>> 3b9b50d0a2f2ba0f89deb6487adae46e55b9b7d7
