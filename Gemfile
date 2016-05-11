source 'http://rubygems.org'

gem 'bundler', '~> 1.12'
gem 'rails', '4.2.6'
gem 'haml', '~> 4.0.7'
gem 'jquery-rails', '~> 3.1.4'
gem 'coffee-rails', '~> 4.1.1'
gem 'uglifier', '>= 1.3.0'
gem 'bourbon', '~> 4.2.2'
gem 'bootstrap', '~> 4.0.0.alpha3'

group :production, :staging do
  gem 'pg'
  gem 'newrelic_rpm'
  gem 'rails_12factor'
end

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
end

group :development do
  gem 'pry-byebug'
  gem 'quiet_assets'
end

gem 'thin'
