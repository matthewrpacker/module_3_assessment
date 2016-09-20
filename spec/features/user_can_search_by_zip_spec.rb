require 'rails_helper'

describe 'User can search for stores' do
  scenario 'They use zip code to search' do
    # As a user
    visit '/'
    # When I visit "/"
    fill_in "Store Zip", with: '80202'
    click_on 'Search'

    expect(current_path).to eq('/search')
    expect(page).to have_content("17 Total Stores")

    # And I should see stores within 25 miles of 80202
    # And I should see a message that says "17 Total Stores"
    # And I should see exactly 15 results
    # And I should see the long name, city, distance, phone number and store type for each of the 15 results
  end
end
