class CreateWorkers < ActiveRecord::Migration[5.1]
  def change
    create_table :workers do |t|
      t.string :username
      t.string :name
      t.string :encrypted_password
      t.string :salt
      t.integer :lunch
      t.integer :delayed
      t.datetime :lastlunch
      t.boolean :admin

      t.timestamps
    end
  end
end
