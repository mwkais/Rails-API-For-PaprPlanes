class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.integer :UserID
      t.integer :Type
      t.text :Caption
      t.text :Content
      t.integer :Counter
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
