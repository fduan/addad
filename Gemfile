source 'https://rubygems.org'
ruby '2.1.1'
gem 'rails', '4.1.6'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
#gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
#gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc

gem 'bootswatch-rails'
gem 'bootstrap-sass'
gem 'devise'
gem 'pg'

gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-facebook'
gem 'omniauth-linkedin'

group :development do
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_21]
  gem 'guard-bundler'
  gem 'guard-rails'
  gem "guard-minitest", :require => false
  gem 'hub', :require=>nil
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'rb-fchange', :require=>false
  gem 'rb-fsevent', :require=>false
  gem 'rb-inotify', :require=>false
end
group :development, :test do
  gem 'factory_girl_rails'
  gem 'faker'
end
group :production do
  gem 'rails_12factor'
  gem 'unicorn'
end
group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver'
  gem "minitest-reporters"
  gem "mocha", :require => false
  gem "minitest-rails-capybara" 
  gem "shoulda"
  gem "connection_pool"
  gem 'simplecov', :require => false
end
