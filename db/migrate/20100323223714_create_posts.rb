class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.integer :user_id
      t.string :title, :feather
      t.text :content, :description, :url, :other
      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
