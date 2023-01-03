class CreateStars < ActiveRecord::Migration[7.0]
  def change
    create_table :stars do |t|
      t.belongs_to :user_id, null: false, foreign_key: true
      t.belongs_to :product_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
