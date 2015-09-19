require 'test_helper'

feature 'Concerts have crud actions' do
  scenario "create concert" do
    # Given a new concert form
    visit '/'
    click_on 'New Concert'
    # When I fill it out and submit it
    select('Polyrhythmics', :from => 'Artists')
    select('Neumos', :from => 'Venues')

    # fill_in 'Event date', with: '10/13/2015'
    click_on 'Create Concert'
    # Then a curatorship should be created
    page.must_have_content 'Curatorship was successfully created.'
    page.must_have_content 'Polyrhythmics'
  end
end
