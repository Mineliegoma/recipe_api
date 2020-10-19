class AddSummaryToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :summary, :string
  end
end
