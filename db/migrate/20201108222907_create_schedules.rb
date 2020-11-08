class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.integer :market_id
      t.integer :farmer_id
      t.timestamps
    end
  end
end
