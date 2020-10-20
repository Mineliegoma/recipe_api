class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :readyInMinutes, :summary, :ingredients


end
# t.string "title"
#     t.string "image"
#     t.integer "readyInMinutes"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.integer "servings"
#     t.string "summary"