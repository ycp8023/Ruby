class CreateTransactionOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :transaction_orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :cart_item, null: false, foreign_key: true
      t.string :delivery_address
      t.string :delivery_name
      t.string :delivery_phone
      t.string :delivery_postcode
      t.string :order_status

      t.timestamps
    end
  end
end
