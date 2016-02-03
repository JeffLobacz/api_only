class Api::ItemsController < ApiController

  before_action :authenticated?

  # def index
  #   lists = List.all
  #   render json: lists, each_serializer: ListSerializer
  # end
  #
  def create
    list = List.find(params[:list_id])
    item = list.items.build(item_params)

    if item.save
      render json: item
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def item_params
    params.require(:item).permit(:description)
  end

end
