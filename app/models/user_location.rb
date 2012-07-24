class UserLocation < ActiveRecord::Base
  belongs_to :user
  attr_accessible :user_id, :latlon, :send_method, :timestamp   
  
  validates :user_id, :latlon, :send_method, :timestamp, :presence => true 
  
  set_rgeo_factory_for_column(:latlon, RGeo::Geographic.spherical_factory(:srid => 4326))
end
