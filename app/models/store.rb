class Store
  attr_reader :stores_summary

  def initialize(store_attributes)
    byebug
    @stores_summary = store_attributes
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
