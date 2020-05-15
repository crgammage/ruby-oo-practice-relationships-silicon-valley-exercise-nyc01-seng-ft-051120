require 'bundler/setup'
Bundler.require
require_rel '../app'
require './app/models/venture_capitalist.rb'
require './app/models/startup.rb'
require './app/models/funding_round.rb'