class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.integer :placeid
      t.integer :userid
      t.integer :price
      t.integer :location
      t.integer :foodamount
      t.integer :foodquality

      t.timestamps
    end
  end
end
