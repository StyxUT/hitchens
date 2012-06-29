class CreateVirusCharacteristics < ActiveRecord::Migration
  def change
    create_table :virus_characteristics do |t|
      t.integer :value, :null => false

      t.timestamps          
                        
      t.references :virus
      t.references :characteristic
    end
  end
end
