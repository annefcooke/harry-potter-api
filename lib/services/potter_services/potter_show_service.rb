require "httparty"
require "json"

class PotterShowService

  include HTTParty

  attr_accessor :characters

  def initialize
    @characters = JSON.parse(HTTParty.get('http://hp-api.herokuapp.com/api/characters/').body)
  end


  def get_show_character id
    @character = JSON.parse(HTTParty.get("http://hp-api.herokuapp.com/api/characters/#{id}").body)
  end

end
