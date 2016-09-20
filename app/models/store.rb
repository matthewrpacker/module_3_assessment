class Store
  attr_reader :type, :name, :city, :distance, :phone

  def initialize(store_attributes)
    @type = store_attributes['storeType']
    @name = store_attributes['longName']
    @city = store_attributes['city']
    @distance = store_attributes['distance']
    @phone = store_attributes['phone']
  end

  def self.service
    StoreService.new
  end

  def self.stores_summary
    service.stores_summary.map do |store|
      new(store)
    end
  end
end
