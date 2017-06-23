class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.decimal :price
      t.references :post

      t.timestamps null: false
    end
    add_index :images, :post
  end
end
