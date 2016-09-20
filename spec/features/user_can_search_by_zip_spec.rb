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
    expect(page).to have_selector(".store", count: 15)
  end
end
