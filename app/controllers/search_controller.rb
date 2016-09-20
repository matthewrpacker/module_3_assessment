class SearchController < ApplicationController
  def index
    @stores = Store.stores_summary
  end
end
