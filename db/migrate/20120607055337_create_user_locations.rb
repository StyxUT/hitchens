class CreateUserLocations < ActiveRecord::Migration
  def change
    create_table :user_locations do |t|
      t.integer :user_id, :null => false
      t.string :lat, :null => false
      t.string :long, :null => false
      t.time :timestamp, :null => false

      t.timestamps
    end
  end
end
