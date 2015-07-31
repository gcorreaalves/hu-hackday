class CreateMediaBlackLists < ActiveRecord::Migration
  def change
    create_table :media_black_lists do |t|
      t.string :media_ig_id, null: false

      t.timestamps null: false
    end
  end
end
