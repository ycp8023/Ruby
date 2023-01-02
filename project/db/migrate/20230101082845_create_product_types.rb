class CreateProductTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :product_types do |t|
      t.references :product, null: false, foreign_key: true
      t.string :product_type_name

      t.timestamps
    end
  end
end
