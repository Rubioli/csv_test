class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.decimal :price

      t.timestamps null: false
    end
  end
end
