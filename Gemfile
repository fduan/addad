source 'https://rubygems.org'
ruby '2.3.0'
gem 'rails', '~> 5.0.0'

gem 'sass-rails'
gem 'uglifier'
#gem 'coffee-rails'
gem 'jquery-rails'
#gem 'turbolinks'
gem 'jbuilder'

#gem 'bootswatch-rails'
gem 'bootstrap-sass'
gem "font-awesome-rails"

gem 'devise', '>= 4.2.0'
gem 'pg'
gem 'redis'
gem 'redis-namespace'
gem 'puma', '~> 3.0'

gem 'rolify'
gem 'pundit'

gem 'simple_form'
gem 'seed-fu'

gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-facebook'
gem 'omniauth-linkedin'

gem 'friendly_id', '~> 5.1.0'
gem 'will_paginate'
gem 'carrierwave'

gem 'socialization'
gem 'acts_as_commentable'
gem 'auto_html', '1.6.4'
gem 'counter_culture', '~> 0.1.33'
gem 'jquery-atwho-rails', '~> 1.3.2'
gem 'public_activity'
gem 'mailboxer', github: 'mailboxer/mailboxer'

group :development do
  gem 'byebug', platform: :mri
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_21]
  gem 'guard-bundler'
  gem 'guard-rails'
  gem "guard-minitest", :require => false
  gem 'hub', :require=>nil
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
  gem 'simplecov-rcov', :require => false
  gem 'minitest-around'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

