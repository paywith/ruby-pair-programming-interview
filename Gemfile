# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'bootsnap', '>= 1.4.4', require: false
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.5'
gem 'rails', '~> 6.1.3.2'

Dir.glob("components/**/*.gemspec") do |gemspec|
  path      = File.dirname(gemspec)
  component = File.basename(path)

  gem component, path: path
end

group :development, :test do
  gem "factory_bot_rails", "~> 6.1.0"
  gem "faker", "~> 2.14.0"
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'database_cleaner-active_record'
  gem "rspec-rails", "~> 4.0.1"
  gem 'shoulda-matchers', '~> 4.0'
end
