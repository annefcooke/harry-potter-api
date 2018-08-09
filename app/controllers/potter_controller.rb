require "httparty"
require "json"
require "date"

class PotterController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Turn on Sinatra Reloader
  configure :development do
    register Sinatra::Reloader
  end

  get '/characters' do

    @api_call = PotterAPI.new
    @character = @api_call.potter_index_service

    erb :'potter/index'

  end

  get '/characters/:id' do

    id = params[:id].to_i

    @api_call = PotterAPI.new
    @character = @api_call.potter_show_service.get_show_character(id)
    @character = @character.first

    erb :'potter/show'

  end

end
