class CreateViruses < ActiveRecord::Migration
  def change
     create_table :viruses do |t|
      t.references :user
      t.string :name, :null => false

      t.timestamps
    end
  end
end
