class ItemOrdersAddNullDefault < ActiveRecord::Migration[6.0]
  def change
    remove_column :item_orders, :group_id, :integer,  null: true
    add_column :item_orders, :group_id, :integer, :default => true
  end
end
