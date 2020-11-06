class UpdateColumnsMarkets < ActiveRecord::Migration[6.0]
  def change
    change_column :markets, :latitude, :string
    change_column :markets, :longitude, :string
    change_column :markets, :location, :string
    change_column :markets, :fmnp, :string
    change_column :markets, :snap_status, :string
    change_column :markets, :zip, :string
  end
end

