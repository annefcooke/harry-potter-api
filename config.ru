require 'sinatra'
require 'sinatra/reloader' if development?
# require_relative './app/models/potter.rb'
require_relative './lib/PotterAPI.rb'
require_relative './app/controllers/static_controller.rb'
require_relative './app/controllers/potter_controller.rb'

use Rack::Reloader

use Rack::MethodOverride

run Rack::Cascade.new([
  StaticController,
  PotterController
])
