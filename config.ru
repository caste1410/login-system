require 'sinatra'
require 'bundler/setup'
require 'digest'

Bundler.require

ENV["RACK_ENV"] = "development"

require File.join(File.dirname(__FILE__), 'app.rb')

Login.start!