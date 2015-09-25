unless ENV['NO_COV']
  require 'simplecov'
  require 'simplecov-rcov'

  if ENV['JOB_NAME'] # on ci server
    require 'simplecov-rcov'
    SimpleCov.formatter = SimpleCov::Formatter::RcovFormatter
  else
    require 'simplecov-html'
    SimpleCov::Formatter::HTMLFormatter
  end

  # Make sure coverage/ directory is always created in root even we run tests/specs
  # from another directory (via RubyMine).
  SimpleCov.root(File.expand_path("../../", __FILE__))
end

ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"

require 'shoulda'
require 'mocha/setup'

# Improved Minitest output (color and progress bar)
require "minitest/reporters"
Minitest::Reporters.use!(
  Minitest::Reporters::ProgressReporter.new,
  ENV,
  Minitest.backtrace_filter)

# Uncomment for awesome colorful output
require "minitest/pride"

# To add Capybara feature tests add `gem "minitest-rails-capybara"`
# to the test group in the Gemfile and uncomment the following:
require "minitest/rails/capybara"

Dir[Rails.root.join("test/support/**/*.rb")].each { |f| require f }

class ActionDispatch::IntegrationTest
  include Capybara::DSL
  include Capybara::Assertions
end

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  # Add more helper methods to be used by all tests here...
end

# See: https://gist.github.com/mperham/3049152
class ActiveRecord::Base
  mattr_accessor :shared_connection
  @@shared_connection = nil

  def self.connection
    @@shared_connection || ConnectionPool::Wrapper.new(:size => 1) { retrieve_connection }
  end
end
ActiveRecord::Base.shared_connection = ActiveRecord::Base.connection