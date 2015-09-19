require "test_helper"

feature "Venues have crud actions" do
  scenario "create venue" do
    # Given a new venue form
    visit venues_path
    click_on 'New Venue'
    # When I fill it out and submit
    fill_in 'Name', with: 'Tractor Tavern'
    fill_in 'Capacity', with: 500
    check 'All ages'
    click_on 'Create Venue'
    # Then a new venue is created and I see a message
    page.must_have_content 'Venue was successfully created.'
    page.must_have_content 'Tractor Tavern'
  end

  scenario "update venue" do
    # Given an edit venue form
    visit venues_path
    click_on 'Edit'
    # When I fill it out and submit
    fill_in 'Name', with: 'Pneumos'
    check 'All ages'
    click_on 'Update Venue'
    # Then the venue is created and I see a message
    page.must_have_content 'Venue was successfully updated'
    page.must_have_content 'Pneumos'
    page.must_have_content 'All ages: true'
  end

  scenario "delete venue" do
    # Given an existing venue
    visit venues_path
    # When I click delete
    click_on 'Destroy'
    # Then the venue is deleted and I see a message
    page.must_have_content 'Venue was successfully destroyed.'
    page.wont_have_content 'Neumos'
  end

  scenario 'create invalid venue' do
    # Given an create venue form
    visit new_venue_path
    # When I submit invalid venue data
    fill_in 'Name', with: ''
    fill_in 'Capacity', with: 600
    click_on 'Create Venue'
    # Then the venue isnt created and I see a message
    page.must_have_content "Name can't be blank"
    page.wont_have_content '600'
  end

  scenario "update invalid venue" do
    # Given an edit venue form
    visit edit_venue_path(venues(:neumos))
    # When I submit invalid venue data
    fill_in 'Capacity', with: 'big enough'
    click_on 'Update Venue'
    # Then the venue isnt updated and I see a message
    page.must_have_content 'Capacity is not a number'
    page.wont_have_content 'big enough'
  end
end
