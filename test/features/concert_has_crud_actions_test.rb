require 'test_helper'

feature 'Curatorship has crud actions' do
  scenario "create curatorship" do
    # Given a new curatorship form
    visit '/'
    click_on 'New Event'
    # When I fill it out and submit it
    fill_in 'Artist', with: 'Chris Potter'
    fill_in 'Venue', with: 'Neumos'
    fill_in 'Event date', with: '10/13/2015'
    click_on 'Create Curatorship'
    # Then a curatorship should be created
    page.must_have_content 'Curatorship was successfully created.'
    page.must_have_content 'Polyrhythmics'
  end
end
