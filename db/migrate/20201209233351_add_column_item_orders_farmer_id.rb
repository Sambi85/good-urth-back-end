class AddColumnItemOrdersFarmerId < ActiveRecord::Migration[6.0]
  def change
    add_column :item_orders, :farmer_id, :integer
  end
end
