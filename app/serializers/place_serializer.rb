class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :touristQuantity, :description, :imageUrl
end
