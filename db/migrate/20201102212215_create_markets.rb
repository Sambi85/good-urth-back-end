class CreateMarkets < ActiveRecord::Migration[6.0]
  def change
    create_table :markets do |t|
      t.string :name
      t.string :address
      t.string :description
      t.timestamps
    end
  end
end
