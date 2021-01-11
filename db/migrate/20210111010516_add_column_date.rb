class AddColumnDate < ActiveRecord::Migration[6.0]
  def change
    add_column :item_orders, :date_purchased, :datetime
  end
end
