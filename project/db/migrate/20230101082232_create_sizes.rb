class CreateSizes < ActiveRecord::Migration[7.0]
  def change
    drop_table :sizes
    create_table :sizes do |t|
      t.references :product, null: false, foreign_key: true
      t.string :size_name
      t.string :description

      t.timestamps
    end
  end
end
