class AddGroupId < ActiveRecord::Migration[6.0]
  def change
    add_column :item_orders, :group_id, :integer
  end
end
