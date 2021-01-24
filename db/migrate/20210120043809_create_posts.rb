class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.text :summary, null: false
      t.text :impressions, null: false
      t.text :image
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end