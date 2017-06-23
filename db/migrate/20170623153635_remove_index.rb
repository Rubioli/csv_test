class RemoveIndex < ActiveRecord::Migration
  def change
    remove_column :images, :post_id, :integer
  end
end
