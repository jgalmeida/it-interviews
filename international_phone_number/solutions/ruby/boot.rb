$:.unshift "."

require "rubygems"
require "bundler"
require "yaml"
require 'multi_json'

# require gemfile
Bundler.require(:default, ENV["RACK_ENV"].to_sym)

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

ENV['RACK_ENV'] = 'development'

Mongoid.load!('configs/mongoid.yml')

#Load models
require "app/models/international_rate"
require "app/models/account"
require "app/models/movement"

#Poros
require "app/poros/call"

#Services
require "app/services/debit_account"
require "app/services/calculator/total_amount"
require "app/services/calculator/price_per_minute"
require "app/services/calculator/talkdesk_number_cost"
require "app/services/calculator/external_number_cost"
require "app/services/calculator/profit_margin"
require "app/services/update_account_credit"
require "app/services/twillio_price_for_call"
