require 'rails_helper'

require 'rails_helper'

describe "Items" do
  fixtures :items

  it 'returns JSON data on all items' do
    get '/api/v1/items'

    items = JSON.parse(response.body)
    item = items.first

    expect(response).to be_success
    expect(items.length).to eq(2)
    expect(items.class).to eq(Array)
    expect(item.class).to eq(Hash)

    expect(item['id']).to eq(1)
    expect(item['name']).to eq('fork')
    expect(item['description']).to eq('helps with eating')
    expect(item['image_url']).to eq('http://robohash.org/1.png?set=set2&bgset=bg1&size=200x200')
    expect(item['created_at']).to eq(nil)
    expect(item['updated_at']).to eq(nil)
  end

  it 'returns JSON data on a specific item' do
    get '/api/v1/items/1'

    item = JSON.parse(response.body)

    expect(response).to be_success
    expect(item.class).to eq(Hash)
    expect(item['id']).to eq(1)
    expect(item['name']).to eq("fork")
    expect(item['description']).to eq("helps with eating")
    expect(item['image_url']).to eq("http://robohash.org/1.png?set=set2&bgset=bg1&size=200x200")
    expect(item['created_at']).to eq(nil)
    expect(item['updated_at']).to eq(nil)
  end
end
