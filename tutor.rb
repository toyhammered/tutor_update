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
  @time_chosen = params[:time_chosen]
  @day_chosen = params[:day_chosen]
  
  all_tutors = []

  time_chosen = '"' + @time_chosen + '"'
  day_chosen = '"' + @day_chosen + '"'
 Tutor.select("tutors.name, tutors.email, availabilities.start_time, availabilities.end_time, availabilities.room").joins(:availability).where("tutors.id = availabilities.tutor_id AND tutors.course_id = #{$course_name_id} AND availabilities.time = #{time_chosen} AND availabilities.day = #{day_chosen}").all.each do |tutor|
      all_tutors << tutor
 end
  
  puts "******************"
  puts "Day Chosen: #{@day_chosen}"
  puts "Time Chosen: #{@time_chosen}"
  puts "Course ID: #{$course_name_id}"
  puts "All Tutors: #{all_tutors}"
  # puts "All Times: #{all_times}"
  puts "******************"
  
  json all_tutors
end

get '/course' do
  # query = {}
  # query.merge(name: params[:course_name]) if !!params[:course_name]
  course_name = params[:course_name]

  course_chosen = Course.find_by name: course_name
  $course_name_id = course_chosen.id

  json course_chosen
end

post '/email' do
  # Sendgrid.send request.body.email, request.body.message
  puts "******************"
  puts request.POST.inspect
  puts request.media_type
  puts "******************"
  # request.body.rewind  # in case someone already read it
  @fullname = params[:fullname]
  @subject = params[:subject]
  @message = params[:message]
  puts "******************"
  puts @fullname
  puts @subject
  puts @message
  puts "******************"
  

  
  'email sent!'
end
  
