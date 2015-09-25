require 'support/helpers/sessions_helpers'

class Capybara::Rails::TestCase
  include Rails.application.routes.url_helpers
  include Features::SessionHelpers
  include Warden::Test::Helpers

  setup do
  	Warden.test_mode!
  end

  teardown do
  	Warden.test_reset!
  end

end

class ActionController::TestCase
  include Devise::TestHelpers
end
