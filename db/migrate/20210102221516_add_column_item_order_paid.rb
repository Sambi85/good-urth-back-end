class AddColumnItemOrderPaid < ActiveRecord::Migration[6.0]
  def change
    add_column :item_orders, :paid, :boolean
  end
end
