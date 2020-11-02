class CreateFarmers < ActiveRecord::Migration[6.0]
  def change
    create_table :farmers do |t|
      t.integer :tent_id
      t.string :username
      t.string :password_digest
      t.string :bio
      t.string :address
      t.string :email
      t.integer :phone_number
      t.time :open
      t.time :close
      t.string :days_open
      t.boolean :is_open
      t.timestamps
    end
  end
end
