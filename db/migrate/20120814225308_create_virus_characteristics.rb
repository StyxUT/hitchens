class CreateVirusCharacteristics < ActiveRecord::Migration
  def change
    create_table :virus_characteristics do |t|
      t.references :characteristic
      t.references :virus    
      t.integer :characteristic_level, :null => false

      t.timestamps
    end
  end
end
