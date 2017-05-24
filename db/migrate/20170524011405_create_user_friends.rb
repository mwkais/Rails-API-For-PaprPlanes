class CreateUserFriends < ActiveRecord::Migration[5.1]
  def change
    create_table :user_friends do |t|
      t.integer :UserID
      t.integer :FriendID
      t.boolean :Pending
      t.datetime :created_at

      t.timestamps
    end
  end
end
