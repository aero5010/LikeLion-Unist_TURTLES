class CreateFusers < ActiveRecord::Migration
  def change
    create_table :fusers do |t|

      t.timestamps null: false
    end
  end
end
