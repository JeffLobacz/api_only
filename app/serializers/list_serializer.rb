class ListSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name

  def user_id
    object.user_id
  end

  def name
    object.name
  end

end
