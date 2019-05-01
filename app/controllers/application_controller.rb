class ApplicationController < ActionController::Base

  include HTTParty #removed to test TVController view rendering issue
  
  require 'addressable/uri'
  require 'addressable/template'

    def index
        super
    end

end
