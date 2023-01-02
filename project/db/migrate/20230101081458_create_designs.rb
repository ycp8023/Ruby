class CreateDesigns < ActiveRecord::Migration[7.0]
  def change
    create_table :designs do |t|
      t.references :product, null: false, foreign_key: true
      t.integer :sales
      t.string :design_number

      t.timestamps
    end
  end
end
