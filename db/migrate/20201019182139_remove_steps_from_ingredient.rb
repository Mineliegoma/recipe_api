class RemoveStepsFromIngredient < ActiveRecord::Migration[6.0]
  def change
    remove_column :ingredients, :steps, :string
  end
end
