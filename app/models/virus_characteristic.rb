class VirusCharacteristic < ActiveRecord::Base
  belongs_to :user
  belongs_to :characteristic
  attr_accessible :characteristic_id, :value, :virus_id 
  
  validates :name, :status_id, :user_id, :presence => true

end
