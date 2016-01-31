class ItemController < ApplicationController
  def index
    items = Item.all
    render json: items.to_json, status: 200
  end
end
