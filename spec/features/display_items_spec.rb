require 'rails_helper'

describe 'It reaches the root page' do
  scenario 'page should have an Items heading' do
    visit '/'

    expect(status_code).to eq(200)

    within('h1') do
      expect(page).to have_content('Items')
    end
  end
end
