class CreateViruses < ActiveRecord::Migration
  def change
    create_table :viruses do |t|
      t.string :name, :null => false

      t.timestamps
      
      t.references :user
    end
  end
end
