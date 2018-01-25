class AddLunchstatusToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :lunchstatus, :integer
    add_column :users, :delayed, :integer
    add_column :users, :lastlunch, :datetime
    add_column :users, :lunchtotal, :integer
    add_column :users, :average_lunch, :integer
    add_column :users, :lastlunchplace, :integer
  end
end
