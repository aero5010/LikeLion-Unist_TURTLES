class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :book
      t.string :author
      t.text :posting

      t.timestamps null: false
    end
  end
end