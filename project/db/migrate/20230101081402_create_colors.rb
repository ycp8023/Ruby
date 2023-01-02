class CreateColors < ActiveRecord::Migration[7.0]
  def change
    create_table :colors do |t|
      t.references :product, null: false, foreign_key: true
      t.string :rgb
      t.string :description

      t.timestamps
    end
  end
end
