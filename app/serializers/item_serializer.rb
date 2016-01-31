class ItemSerializer < ActiveModel::Serializer
  attributes :id, :list_id, :name

  def list_id
    object.list_id
  end

  def name
    object.name
  end
  
end
