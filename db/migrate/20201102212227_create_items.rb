class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :farmer_id
      t.integer :order_id
      t.string :name
      t.float :price
      t.string :purchase_unit
      t.float :stock_amount
      t.boolean :item_pulled
      t.timestamps
    end
  end
end
