source 'https://rubygems.org'

ruby '2.3.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Use Haml as the templating library
gem 'haml'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

gem 'json', '~> 1.8.3'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem "jquery-slick-rails"


# This is for google authentication
gem "omniauth-google-oauth2", "~> 0.2.1"

#This is for Calendar API use
gem 'google-api-client', '0.8.2', :require => 'google/api_client'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

#for encrypting table columns
gem 'attr_encrypted'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

#for static image storage
gem 'aws-sdk', '~> 2'


gem 'hashids'
gem 'carrierwave', '~> 1.0'
gem 'fog'
gem 'mini_magick'
gem 'bootstrap-sass', '~> 3.3.7'
gem 'jquery-rails'
group :development do
 # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
 
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  gem 'rspec-rails'
  gem 'guard-rspec'
  gem 'cucumber-rails', :require => false
	gem 'cucumber-rails-training-wheels'
	gem 'database_cleaner'
	gem 'simplecov', require: false
	gem 'factory_girl_rails', :require => false


end

group :production do
  gem 'pg' # for Heroku deployment
  gem 'rails_12factor'
end


