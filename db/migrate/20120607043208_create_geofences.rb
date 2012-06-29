class CreateGeofences < ActiveRecord::Migration
  def change
    create_table :geofences do |t|
      t.integer :region, :null => false
      t.string :lat, :null => false
      t.string :long, :null => false
      t.integer :radius, :null => false

      t.timestamps
            
      t.references :user
    end
  end
end
