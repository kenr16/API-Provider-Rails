class PlaceSerializer < ActiveModel::Serializer
  attributes :name, :description, :price
  # has_many :reviews
end
