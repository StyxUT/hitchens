class CreateCharacteristics < ActiveRecord::Migration
  def change
    create_table :characteristics do |t|
      t.string :characteristic, :null => false
      t.string :description, :null => false

      t.timestamps
    end
  end
end