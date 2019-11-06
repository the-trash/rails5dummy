source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '>= 5.2.0'
gem 'puma', '>= 4.2.1'

gem 'pg'
gem 'mysql2', '>= 0.5.2'
gem 'sqlite3', '>= 1.4.1'

# User Model
gem 'devise'
gem 'haml-rails'

#~~~~~~~~~~~~~~~~~ TheRole ~~~~~~~~~~~~~~~~~#

# RAILS_ENV=development bundle install
if ENV['RAILS_ENV'] == 'development'
  gem 'the_role_api',
    path: '../the_role_api'

  gem 'the_role_management_panel',
    path: '../the_role_management_panel'
else
  gem 'the_role', '~> 3.9'
end

# Other
gem 'faker'
gem 'pry-rails'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'

group :development do
  gem 'listen'
end

group :test do
  gem 'minitest'
  gem "minitest-rails"
  gem 'test-unit' if RUBY_VERSION >= '2.2'

  gem 'database_cleaner'
  gem 'factory_girl_rails', '~> 4.0'

  %w[
    rspec-core
    rspec-expectations
    rspec-mocks
    rspec-rails
    rspec-support
  ].each do |lib|
    gem lib, :git => "git://github.com/rspec/#{lib}.git", :branch => 'master'
  end
end
