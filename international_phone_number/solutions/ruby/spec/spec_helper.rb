$:.unshift '.'

ENV['RACK_ENV'] = 'test'

require 'boot'
require 'database_cleaner'
require 'rack/test'

module RSpecMixin
  include Rack::Test::Methods
  def app() Debtor end
end

FactoryGirl.definition_file_paths = %w{./factories ./test/factories ./spec/factories}
FactoryGirl.find_definitions


RSpec.configure do |config|

  config.before(:suite) do
    DatabaseCleaner.strategy = :truncation
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

  config.include FactoryGirl::Syntax::Methods
  config.include RSpecMixin
end
