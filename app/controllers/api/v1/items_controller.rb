class Api::V1::ItemsController < ApplicationController
  respond_to :json

  def index
    respond_with Item.all
  end

  def show
    respond_with Item.find(params[:id])
  end

  def destroy
    respond_with Item.find(params[:id]).delete
  end

  def create
    Item.create(
      name: params(:name),
      description: params(:description),
      image_url: params(:image_url)
    )
    respond_with Item.last
  end
end
