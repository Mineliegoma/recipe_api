class CreateSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :searches do |t|
      t.string :usedIngredients
      t.string :missedIngredients
      t.string :image
      t.string :title

      t.timestamps
    end
  end
end
