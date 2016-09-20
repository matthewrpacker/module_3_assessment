class Store
  attr_reader :count, :name, :city, :distance, :phone, :type

  def initialize(store_attributes)
    byebug
    @count = store_attributes['total']
    @name = store_attributes['longName']
    @city = store_attributes['city']
    @distance = store_attributes['distance']
    @phone = store_attributes['phone']
    @type = store_attributes['storeType']
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
