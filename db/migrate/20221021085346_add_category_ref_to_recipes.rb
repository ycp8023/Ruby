class AddCategoryRefToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_reference :recipes, :category, null: false, foreign_key: true
  end
end
