class RemoveColumnFarmer < ActiveRecord::Migration[6.0]
  def change
    remove_column :farmers, :market_id, :integer
  end
end
