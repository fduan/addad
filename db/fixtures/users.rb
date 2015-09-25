admin = User.seed_once(:email) do |user|
  user.name = Rails.application.secrets.admin_name
  user.email = Rails.application.secrets.admin_email
  user.password = Rails.application.secrets.admin_password
  user.password_confirmation = Rails.application.secrets.admin_password
  user.confirmed_at = Time.current
end