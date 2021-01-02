class ChangeRowFarmersPhoneNumber < ActiveRecord::Migration[6.0]
  def change
    remove_column :farmers, :phone_number, :integer
    add_column :farmers, :phone_number, :string
  end
end
