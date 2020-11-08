class AddColumnOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :pick_up, :string
  end
end
