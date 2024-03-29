source 'https://rubygems.org'

ruby '1.9.3'
gem 'rails', '3.2.8'

group :development, :test do
  gem 'sqlite3'
end

group :production do
  gem 'pg'
end

gem 'foundation_rails_helper', :github => 'dgoldie/foundation_rails_helper'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  
  # Add these gems
  gem 'compass-rails', '~> 1.0.3'
  gem 'zurb-foundation', '~> 3.1.1'
end

gem "thin"
gem 'jquery-rails'
gem "haml", ">= 3.1.7"
gem "haml-rails", ">= 0.3.5", :group => :development
gem "hpricot", ">= 0.8.6", :group => :development
gem "ruby_parser", ">= 2.3.1", :group => :development
gem "rspec-rails", ">= 2.11.0", :group => [:development, :test]
gem "email_spec", ">= 1.2.1", :group => :test
gem "cucumber-rails", ">= 1.3.0", :group => :test, :require => false
gem "database_cleaner", ">= 0.9.1", :group => :test
gem "launchy", ">= 2.1.2", :group => :test
gem "capybara", ">= 1.1.2", :group => :test
gem "factory_girl_rails", ">= 4.1.0", :group => [:development, :test]
gem "devise", ">= 2.1.2"
gem "quiet_assets", ">= 1.0.1", :group => :development
gem "hub", ">= 1.10.2", :require => nil, :group => [:development]

gem 'acts-as-taggable-on', '~> 2.3.1'
gem 'activerecord-reputation-system', require: 'reputation_system'
# gem 'paperclip', '~> 3.0'

gem "twilio-ruby"