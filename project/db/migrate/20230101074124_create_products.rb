class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :retail_price
      t.integer :favorites
      t.integer :sales
      t.string :description
      t.string :image_directory
      t.integer :gender
      t.string :added_time

      t.timestamps
    end
  end
end
