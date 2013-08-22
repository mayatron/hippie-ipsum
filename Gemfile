source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', '4.0.0'
gem 'mysql2'
gem 'haml', '~> 4.0.3'
gem 'twitter-bootstrap-rails', '~> 2.2.8'
gem 'jquery-rails', '~> 3.0.4'

# assets
gem 'sass-rails', '~> 4.0.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.0.3'

group :production, :staging do
  gem 'pg'
  gem 'newrelic_rpm'
end

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
end

group :development do
  gem 'hirb'
  gem 'railroady'
  gem 'pry'
  gem 'pry-debugger'
  gem 'pry-rails'
  gem 'pry-remote-em'
  gem 'quiet_assets'
end

gem 'thin'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', :platforms => :ruby

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
