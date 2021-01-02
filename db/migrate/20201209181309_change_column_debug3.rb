class ChangeColumnDebug3 < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :price, :decimal
    add_column :items, :price, :decimal, :precision => 8, :scale => 2
  end
end
