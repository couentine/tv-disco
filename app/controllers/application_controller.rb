class ApplicationController < ActionController::Base

  include HTTParty #removed to test TVController view rendering issue

  def index
   super
  end

end
