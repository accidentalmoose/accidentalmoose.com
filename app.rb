require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'haml'
require 'sass'
require 'coffee-script'
require 'in_bed_with'

set :app_file, __FILE__
set :root, File.dirname(__FILE__)
set :views, 'views'
set :public, 'public'
set :haml, {:format => :html5} # default Haml format is :xhtml

Sinatra.helpers InBedWith::Helper

get '/' do
  haml :index
end

get '/styles.css' do
  sass :stylesheet
end

get '/application.js' do
  content_type 'text/javascript'
  coffee :application
end
