class AddPicToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :pic, :string
  end
end
