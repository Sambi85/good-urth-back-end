class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.integer :farmer_id
      t.text :description
      t.time :time
      t.date :date
      t.timestamps
    end
  end
end
