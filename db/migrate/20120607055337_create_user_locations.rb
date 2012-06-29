class CreateUserLocations < ActiveRecord::Migration
  def change
    create_table :user_locations do |t|
      t.string :lat, :null => false
      t.string :long, :null => false
      t.datetime :timestamp, :null => false

      t.timestamps                     
      
      t.references :user
    end
  end
end
