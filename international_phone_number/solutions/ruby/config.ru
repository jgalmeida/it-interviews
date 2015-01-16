$:.unshift File.expand_path(File.dirname(__FILE__))

require 'boot'
require 'debtor'

run Debtor
