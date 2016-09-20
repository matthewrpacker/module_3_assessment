class StoreService
  def initialize
    @response = Faraday.get("https://api.bestbuy.com/v1/stores(area(80202,25))?format=json&show=storeId,storeType,name,longName,city,distance,phone,storeType&pageSize=15&apiKey=#{ENV['BEST_KEY']}")
  end

  #
  # def stores
  #   @parsed_response['stores']
  # end
end
