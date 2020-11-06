class AddPhone < ActiveRecord::Migration[6.0]
  def change
    add_column :markets, :phone, :string
  end
end
