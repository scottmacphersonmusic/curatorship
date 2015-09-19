require 'test_helper'

feature 'Concerts have crud actions' do
  scenario 'concert index' do
    # When I visit the concert index
    visit '/'
    # Then I can see a listing of all the concerts
    page.must_have_content 'Polyrhythmics'
    page.must_have_content 'Neumos'
  end

  scenario 'show concert' do
    # When I visit a concert show page
    visit concert_path(concerts(:one))
    # Then I can see info about that concert
    page.must_have_content 'Polyrhythmics'
    page.must_have_content 'All Ages: No'
    page.must_have_content 'Artist Draw'
  end

  scenario "create concert" do
    # Given a new concert form
    visit '/'
    click_on 'New Concert'
    # When I fill it out and submit it
    select('Polyrhythmics', from: 'concert_artist_id')
    select('Neumos', from: 'concert_venue_id')
    select('2016', from: 'concert_concert_date_1i')
    select('May', from: 'concert_concert_date_2i')
    select('15', from: 'concert_concert_date_3i')
    select('8 PM', from: 'concert_concert_date_4i')
    select('30', from: 'concert_concert_date_5i')
    click_on 'Create Concert'
    # Then a concert should be created
    page.must_have_content 'Concert was successfully created.'
    page.must_have_content 'Polyrhythmics'
  end

  scenario "update concert" do
    # Given an edit concert form
    visit edit_concert_path(concerts(:one))
    # When I edit and submit it
    select('2017', from: 'concert_concert_date_1i')
    click_on 'Update Concert'
    # Then it should be edited
    page.must_have_content 'Concert was successfully udpated.'
    page.must_have_content '2017'
  end

  scenario "destroy concert" do
    # Given an existing concerts show page
    visit concert_path(concerts(:one))
    # When I click 'Destroy'
    click_on 'Destroy'
    # Then it should be destroyed
    page.must_have_content 'Concert was successfully destroyed :('
    page.wont_have_content 'Neumos'
  end

  # There are no 'unhappy' paths to test because only valid input is available
end
