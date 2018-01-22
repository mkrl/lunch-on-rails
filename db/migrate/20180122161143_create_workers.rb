class CreateWorkers < ActiveRecord::Migration[5.1]
  def change
    create_table :workers do |t|
      t.string :username
      t.string :name
      t.string :password_digest
      t.integer :lunch_status
      t.datetime :lastlunch
      t.integer :delayed
      t.integer :lunch_count

      t.timestamps
    end
  end
end
