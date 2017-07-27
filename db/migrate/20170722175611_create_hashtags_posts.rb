class CreateHashtagsPosts < ActiveRecord::Migration
  def change
    create_table :hashtags_posts do |t|
      
      t.integer :post_id
      t.integer :hashtag_id
      
      t.belongs_to :post
      t.belongs_to :hashtag
    end
  end
end
