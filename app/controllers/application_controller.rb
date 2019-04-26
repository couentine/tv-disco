class ApplicationController < ActionController::Base

  protect_from_forgery

  include HTTParty #removed to test TVController view rendering issue
  
  require 'addressable/uri'
  require 'addressable/template'

  layout :application

end
