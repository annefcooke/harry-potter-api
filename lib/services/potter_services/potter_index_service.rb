require "httparty"
require "json"

class PotterIndexService

  include HTTParty

  attr_accessor :characters

  def initialize
    @characters = JSON.parse(HTTParty.get('http://hp-api.herokuapp.com/api/characters/').body)
  end

  def get_all_characters
    @characters
  end

end
