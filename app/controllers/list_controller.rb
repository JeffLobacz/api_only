class ListController < ApplicationController
  def index
    lists = List.all
    render json: lists.to_json, status: 200
  end
end
