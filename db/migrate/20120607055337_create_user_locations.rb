class CreateUserLocations < ActiveRecord::Migration
  def change
    create_table :user_locations do |t|
      t.point :latlon, :geographic => true
      t.datetime :timestamp, :null => false

      t.timestamps                     
      
      t.references :user
    end
  end
end
