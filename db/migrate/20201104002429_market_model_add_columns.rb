class MarketModelAddColumns < ActiveRecord::Migration[6.0]
  def change
    remove_column :markets, :description, :string
    add_column :markets, :borough, :string
    add_column :markets, :latitude, :float
    add_column :markets, :longitude, :float
    add_column :markets, :days_of_operation, :string
    add_column :markets, :hours_of_operation, :string
    add_column :markets, :season_dates, :string
    add_column :markets, :accepts_ebt, :boolean
    add_column :markets, :open_year_round, :boolean
    add_column :markets, :location, :point
  end
end
