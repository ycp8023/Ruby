class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.string :action_type, null: false, limit: 64
      t.string :action_option, limit: 64
      t.string :target_type, limit: 64
      t.bigint :target_id
      t.string :user_type, limit: 64
      t.bigint :user_id

      t.timestamps
    end

    add_index :likes, %i[user_type user_id action_type]
    add_index :likes, %i[target_type target_id action_type]
    end
end