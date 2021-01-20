class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.integer :genre_id, null: false
      t.text :summary, null: false
      t.text :impressions, null: false
      t.timestamps
    end
  end
end