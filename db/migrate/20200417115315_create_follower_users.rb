class CreateFollowerUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :follower_users do |t|
      t.integer :follower_user_id
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
