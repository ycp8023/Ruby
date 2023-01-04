class CreateAccprods < ActiveRecord::Migration[7.0]
  def change
    create_table :accprods do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :transaction_order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
