class UpdateColumnsItem < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :order_id, :integer
    add_column :items, :url, :string 
  end
end
