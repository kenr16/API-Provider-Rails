class ReviewSerializer < ActiveModel::Serializer
  attributes :author, :content, :place_id
end
