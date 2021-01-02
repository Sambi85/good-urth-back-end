class ChangeColumnDebug1 < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :price, :money
    add_column :items, :price, :decimal, :precision => 15, :scale => 10
  end
end
