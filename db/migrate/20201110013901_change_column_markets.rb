class ChangeColumnMarkets < ActiveRecord::Migration[6.0]
  def change
    remove_column :markets, :phone, :string
    add_column :markets, :phone_number, :string
  end
end
