class CreateTents < ActiveRecord::Migration[6.0]
  def change
    create_table :tents do |t|
      t.integer :market_id
      t.string :name
      t.string :description
      t.timestamps
    end
  end
end
