class UpdateColumnFarmer < ActiveRecord::Migration[6.0]
  def change
    remove_column :farmers, :tent_id, :integer
    add_column :farmers, :market_id, :integer
  end
end
