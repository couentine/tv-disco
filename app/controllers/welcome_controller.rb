require 'httparty'

class WelcomeController < ApplicationController
  include HTTParty

  def initialize
    @top
  end

   def index

    response = HTTParty.get("https://api.themoviedb.org/3/tv/popular?api_key=fb6a1d3f38c3d97f67df6d141f936f29&language=en-US")

     @top = JSON.parse(response.body, symbolize_names: true)
  end
end