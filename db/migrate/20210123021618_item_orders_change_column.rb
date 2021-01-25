class ItemOrdersChangeColumn < ActiveRecord::Migration[6.0]
  def change
      remove_column :item_orders, :paid
      remove_column :item_orders, :group_id, :integer
      add_column :item_orders, :group_id, :integer, null: true
  end
end
