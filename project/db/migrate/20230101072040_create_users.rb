class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password
      t.integer :user_role
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
