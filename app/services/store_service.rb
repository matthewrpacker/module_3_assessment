class StoreService
  def initialize
    @response = Faraday.get("https://api.bestbuy.com/v1/stores(area(80202,25))?format=json&show=storeId,storeType,name,longName,city,distance,phone,storeType&pageSize=15&apiKey=#{ENV['BEST_KEY']}")
  end

  def stores_summary
    parsed_response = JSON.parse(@response.body)
    parsed_response['stores']
  end

  def store_total
    parsed_response = JSON.parse(@response.body)
    parsed_response['total']    
  end
end
