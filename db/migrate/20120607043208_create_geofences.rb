class CreateGeofences < ActiveRecord::Migration
  def change
    create_table :geofences do |t|
      t.integer :user_id, :null => false
      t.integer :region, :null => false
      t.string :lat, :null => false
      t.string :long, :null => false
      t.integer :radius, :null => false

      t.timestamps
    end
  end
end
