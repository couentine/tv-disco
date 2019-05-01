class TvController < ApplicationController

  def index
    response = HTTParty.get("https://api.themoviedb.org/3/tv/popular?api_key=fb6a1d3f38c3d97f67df6d141f936f29&language=en-US")
    @top = JSON.parse(response.body, symbolize_names: true) 
  end

  def initialize
    super
  end

   #To render search results page
  def search_result
    @search = params[:search]
    query = params[:search] #Query variable is the string a user enters in the search bar.
    url = Addressable::URI.parse('https://api.themoviedb.org/3/search/tv?api_key=fb6a1d3f38c3d97f67df6d141f936f29&language=en-US')
    url.query_values = url.query_values.merge(query: query)
    response = HTTParty.get(url)
    @results = JSON.parse(response.body, symbolize_names: true) 
  end 

   #To render individual TV show view page
  def show
    id = params.keys[1] # Query variable is the ID of the TV show that the user clicks on.

     #template = Addressable::Template.new('https://api.themoviedb.org/3/tv/{?query*}?api_key=fb6a1d3f38c3d97f67df6d141f936f29&language=en-US')
    #url = template.expand({"query" => id})
    #response = HTTParty.get(url)

     url = Addressable::URI.parse("https://api.themoviedb.org/3/tv/#{id}?api_key=fb6a1d3f38c3d97f67df6d141f936f29&language=en-US")
     response = HTTParty.get(url)

     @show = JSON.parse(response.body, symbolize_names: true) 
  end
end

