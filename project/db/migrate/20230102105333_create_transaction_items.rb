class CreateTransactionItems < ActiveRecord::Migration[7.0]
  def change
    create_table :transaction_items do |t|
      t.references :transaction_order, null: false, foreign_key: true
      t.integer :product_id
      t.integer :quantity
      t.integer :price

      t.timestamps
    end
  end
end
