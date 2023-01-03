class CreateSendprods < ActiveRecord::Migration[7.0]
  def change
    create_table :sendprods do |t|
      t.belongs_to :admin, null: false, foreign_key: true
      t.belongs_to :transaction_order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
