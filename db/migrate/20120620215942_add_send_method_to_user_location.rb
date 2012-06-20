class AddSendMethodToUserLocation < ActiveRecord::Migration
  def change
    add_column :user_locations, :send_method, :string
  end
end
