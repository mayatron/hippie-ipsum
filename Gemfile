source 'https://rubygems.org'
ruby '1.9.3'

gem 'rails', '3.2.12'
gem 'mysql2'
gem 'haml'
gem 'twitter-bootstrap-rails'
gem 'jquery-rails'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

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
