ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
# require 'shoulda/matchers'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  # fixtures :all

  # Add more helper methods to be used by all tests here...
  include FactoryGirl::Syntax::Methods
end

# Add Devise test helpers
class ActionController::TestCase
  include Devise::TestHelpers
end

# Shoulda::Matchers.configure do |config| -THIS WOULD BE WITH SHOULDA/MATCHERS 3.0.0
#   config.integrate do |with|
#     with.test_framework :minitest
#     with.test_framework :minitest_4
#     with.test_framework :test_unit
#
#     with.library :rails
#   end
# end
