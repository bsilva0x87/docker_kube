# frozen_string_literal: true

require 'support/simplecov'
require 'spec_helper'

ENV['RAILS_ENV'] ||= 'test'

require File.expand_path('../config/environment', __dir__)

if Rails.env.production?
  abort('The Rails environment is running in production mode!')
end

require 'rspec/rails'

begin
  ActiveRecord::Base
    .establish_connection(adapter: 'sqlite3', database: ':memory:')
  ActiveRecord::Schema.verbose = false
  load "#{Rails.root}/db/schema.rb"
rescue ActiveRecord::PendingMigrationError => e
  puts e.to_s.strip
  exit 1
end

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = false
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
end

require 'support/database_cleaner'
require 'support/factory_bot'
require 'support/shoulda_matchers'
