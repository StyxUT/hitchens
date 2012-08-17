class CreateUserLocations < ActiveRecord::Migration
  def change
    create_table :user_locations do |t|
      t.references :user
      t.point :latlon, :srid => 3785
      t.datetime :timestamp, :null => false

      t.timestamps                     
      
    end
    change_table :user_locations do |t|
         t.index :latlon, :spatial => true
    end
  end
end
