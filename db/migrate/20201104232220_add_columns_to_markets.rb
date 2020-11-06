class AddColumnsToMarkets < ActiveRecord::Migration[6.0]
  def change
    remove_column :markets, :days_of_operation
    remove_column :markets, :accepts_ebt
    remove_column :markets, :open_year_round
    add_column :markets, :contact, :string
    add_column :markets, :url, :string
    add_column :markets, :fmnp, :boolean
    add_column :markets, :snap_status, :boolean
    add_column :markets, :zip, :integer
    add_column :markets, :operation_months_code, :string
  end
end
