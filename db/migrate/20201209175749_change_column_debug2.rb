class ChangeColumnDebug2 < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :price, :decimal, :precision => 15, :scale => 10
    add_column :items, :price, :decimal
  end
end
