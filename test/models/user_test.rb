require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
  	@user = User.new(email: 'user_1@example.com')
  end
  subject { @user }

  test "#email returns a string" do
    assert_equal 'user_1@example.com', @user.email
  end
end
