source 'https://rubygems.org'

gem 'sinatra'
gem 'sinatra-contrib', github: 'sinatra/sinatra-contrib'

gem 'sass'
gem "activerecord"
gem "sinatra-activerecord"
gem 'sinatra-asset-pipeline'
gem 'sinatra-partial', require: 'sinatra/partial'
gem 'uglifier'

gem 'sendgrid-ruby'

group :development do
    gem 'sqlite3'
    gem "tux"
end

group :production do
    gem 'pg'
    gem 'unicorn'
end