require 'test_helper'

feature 'Artists have crud actions' do
  scenario 'create artist' do
    # Given a new artist form
    visit artists_path
    click_on 'New Artist'
    # When I fill it out and submit
    fill_in 'Name', with: 'Allen Stone'
    fill_in 'Genre', with: 'Neo-Soul'
    fill_in 'Draw', with: 2_000
    click_on 'Create Artist'
    # Then a new artist is created and I see a message
    page.must_have_content 'Artist was successfully created.'
    page.must_have_content 'Allen Stone'
  end

  scenario "update artist" do
    # Given an edit artist form
    visit artists_path
    click_on 'Edit'
    # When I fill it out and submit
    fill_in 'Genre', with: 'Soul/Pop'
    click_on 'Update Artist'
    # Then the artist is created and I see a message
    page.must_have_content 'Artist was successfully updated.'
    page.must_have_content 'Soul/Pop'
  end

  scenario "delete artist" do
    # Given an existing artist
    visit artists_path
    # When I click delete
    click_on 'Destroy'
    # Then the artist is deleted and I see a message
    page.must_have_content 'Artist was successfully destroyed.'
    page.wont_have_content 'Chris Potter'
  end

  scenario "create invalid artist" do
    # Given an create artist form
    visit new_artist_path
    # When I submit invalid artist data
    fill_in 'Name', with: 'Thelonious Monk'
    fill_in 'Genre', with: ''
    fill_in 'Draw', with: 2_500
    click_on 'Create Artist'
    # Then the artist isnt created and I see a message
    page.must_have_content "Genre can't be blank"
    page.wont_have_content 'Thelonious Monk'
  end

  scenario "update invalid artist" do
    # Given an edit artist form
    visit edit_artist_path(artists(:potter))
    # When I submit invalid artist data
    fill_in 'Draw', with: 'lots of people'
    click_on 'Update Artist'
    # Then the artist isnt updated and I see a message
    page.must_have_content 'Draw is not a number'
    page.wont_have_content 'lots of people'
  end
end
