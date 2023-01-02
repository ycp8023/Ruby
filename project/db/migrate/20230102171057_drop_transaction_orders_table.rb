class DropTransactionOrdersTable < ActiveRecord::Migration[7.0]
    def up
      drop_table :transaction_items
      drop_table :transaction_orders
    end

    def down
      raise ActiveRecord::IrreversibleMigration
    end
  end
