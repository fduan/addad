DatabaseCleaner.strategy = :transaction
DatabaseCleaner.clean_with(:truncation)

module DatabaseCleanerHelper
  def setup
    DatabaseCleaner.start
  end

  def teardown
    DatabaseCleaner.clean
  end
end

class ActionController::TestCase
  include DatabaseCleanerHelper
end

class ActiveSupport::TestCase
  include DatabaseCleanerHelper
end

class Capybara::Rails::TestCase
  self.use_transactional_fixtures = false
  include DatabaseCleanerHelper
end