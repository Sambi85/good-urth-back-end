class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :farmer_id
      t.integer :star_rating
      t.text  :description
      t.time :time
      t.date :date
      t.timestamps
    end
  end
end
