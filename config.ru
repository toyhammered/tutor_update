require 'rubygems'
require 'bundler'
require 'sass/plugin/rack'
require './tutor' # this is our routes file

Bundler.require

run Sinatra::Application