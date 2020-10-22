class Api::V1::SearchSerializer < ActiveModel::Serializer
  attributes :id, :usedIngredients, :missedIngredients, :image, :title
end
