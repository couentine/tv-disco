require 'spec_helper'
require 'rails_helper'
require 'capybara/rails'

RSpec.describe TvController, type: :request do

 it "Use the search bar" do
     visit '/'
      
    fill_in "search", with: 'friends', match: :first
    click_button 'Search'

    expect(page).to have_text 'Search results for Friends'
  end

   it "Display the show page" do
     visit '/'
      
    fill_in "search", with: 'friends', match: :first
    click_button 'Search'
    click_button('View', :match => :first)

    expect(page).to have_text 'Number of Seasons'
  end

end
