class AddInstructionToRecipe < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :instructions, :string
  end
end
