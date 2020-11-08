class AddColumnSchedules < ActiveRecord::Migration[6.0]
  def change
    add_column :schedules, :days_of_the_week, :string
  end
end
