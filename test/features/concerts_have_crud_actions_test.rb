require 'test_helper'

feature 'Concerts have crud actions' do

  scenario 'concert index' do
    # When I visit the concert index
    visit '/'
    # Then I can see a listing of all the concerts
    page.must_have_content 'Polyrhythmics'
    page.must_have_content 'Neumos'
  end

  # scenario "create concert" do
  #   # Given a new concert form
  #   visit '/'
  #   click_on 'New Concert'
  #   # When I fill it out and submit it
  #   select('Polyrhythmics', :from => 'Artists')
  #   select('Neumos', :from => 'Venues')
  #   # select(datetime)
  #   click_on 'Create Concert'
  #   # Then a curatorship should be created
  #   page.must_have_content 'Curatorship was successfully created.'
  #   page.must_have_content 'Polyrhythmics'
  # end
end
