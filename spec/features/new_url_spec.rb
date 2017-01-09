require 'rails_helper'

RSpec.feature "New URL", type: :feature do

let(:url) { FactoryGirl.create(:url) }

  scenario "User clicks on link to form" do
  	visit 'urls'
  	click_link 'Create New URL'
    expect(current_path).to eq(new_url_path)
  end

  scenario "User inputs a new long URL" do
    visit '/urls/new'
    fill_in 'url_long_url', :with => @url
    click_button 'Create Url'
    expect(current_path).to eq(urls_path)
  end

end