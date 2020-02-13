# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'bootsnap', '>= 1.4.2', require: false
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'rack-cors'
gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
gem 'redis'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'sqlite3'
end

group :development do
  gem 'bullet'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop', require: false
  gem 'rubycritic', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'database_cleaner'
  gem 'factory_bot'
  gem 'faker', git: 'https://github.com/stympy/faker.git', branch: 'master'
  gem 'guard-rspec', require: false
  gem 'rspec-rails', require: false
  gem 'shoulda-matchers', '4.0.0.rc1'
  gem 'simplecov', require: false
  gem 'webmock'
end
