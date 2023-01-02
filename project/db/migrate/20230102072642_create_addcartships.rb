class CreateAddcartships < ActiveRecord::Migration[7.0]
  def change
    create_table :addcartships do |t|
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: { to_table: :users }


      t.timestamps
    end
  end
end
