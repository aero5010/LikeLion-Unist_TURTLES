class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      
      t.string :title
      t.string :book
      t.string :author
      t.text :posting
      t.boolean :isPrivate
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
