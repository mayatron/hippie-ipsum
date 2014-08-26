source 'http://rubygems.org'

gem 'bundler', '~> 1.7.2'
gem 'rails', '4.1.4'
gem 'haml', '~> 4.0.5'
gem 'twitter-bootstrap-rails', '~> 3.2.0'
gem 'jquery-rails', '~> 3.1.1'
gem 'sass-rails', '~> 4.0.3'
gem 'coffee-rails', '~> 4.0.1'
gem 'uglifier', '>= 1.0.3'

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
