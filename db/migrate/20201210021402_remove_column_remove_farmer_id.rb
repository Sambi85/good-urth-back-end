class RemoveColumnRemoveFarmerId < ActiveRecord::Migration[6.0]
  def change
    remove_column :item_orders, :date_purchased, :string
  end
end
