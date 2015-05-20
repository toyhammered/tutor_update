require 'rubygems'
require 'bundler'
require 'sass/plugin/rack'

Bundler.require
require './tutor' # this is our routes file

run Sinatra::Application