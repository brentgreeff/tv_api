source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
gem 'mysql2', '>= 0.4.4'
gem 'puma', '~> 4.3'
gem 'redis', '~> 4.0'
gem 'jsonapi-rails'

gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'rspec'
  gem 'factory_bot_rails'
end

group :test do
  gem 'jsonapi-rspec'
end

group :development do
  gem 'guard-rspec', require: false
  gem 'pry-rails'
  gem 'pry-doc'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
