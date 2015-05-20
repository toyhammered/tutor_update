# This is similar to routes.rb

require 'sinatra'
require 'erb'
require 'sinatra/json'
require 'sinatra/config_file'
require 'sinatra/activerecord'
require 'sinatra/asset_pipeline'
require 'sinatra/partial'

# Models
require './models/course'
require './models/tutor'
require './models/availability'

# Database
require './environment'


# are these 3 lines actually needed, using the Sinatra/partial helper?
register Sinatra::Partial
set :partial_template_engine, :erb
enable :partial_underscores

# Include these files when precompiling assets
set :assets_precompile, %w(application.js application.css *.png *.jpg *.svg *.eot *.ttf *.woff *.woff2)
# Logical paths to your assets
set :assets_prefix, %w(lib/assets app/assets)
# CSS minification
set :assets_css_compressor, :sass
# JavaScript minification
set :assets_js_compressor, :uglifier

# Register the AssetPipeline extention, make sure this goes after all customization
register Sinatra::AssetPipeline

  


# Routes
get '/' do
  erb :index
end

get '/tutor' do
  @day_chosen = params[:day_chosen]
  all_tutors = Tutor.find_by course_id: @course_name.id
  json all_tutors
end

get '/availability' do
 
end

get '/course' do
  # query = {}
  # query.merge(name: params[:course_name]) if !!params[:course_name]
  @course_name = params[:course_name]
  course_chosen = Course.find_by name: @course_name
  json course_chosen
end

post '/email' do ||
  # Sendgrid.send request.body.email, request.body.message
  'email sent!'
end
  
