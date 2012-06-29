class UserLocation < ActiveRecord::Base
  belongs_to :user
  attr_accessible :user_id, :lat, :long, :send_method, :timestamp   
  
  validates :user_id, :lat, :long, :send_method, :timestamp, :presence => true
end
