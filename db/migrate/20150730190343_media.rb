class Media < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.integer :media_ig_id, null: false
      t.string  :user_name, null: false
      t.string  :post_url, null: false
      t.string  :user_avatar_url, null: false
      t.string  :url_thumb, null: false
      t.string  :url_standard, null: false
      
      t.string :longitute, null: false
      t.string :latitude, null: false
      t.string  :city, null: false

      t.datetime :created_at_ig, null: false

      t.timestamps null: false
    end 
  end
end
