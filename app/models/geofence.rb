class Geofence < ActiveRecord::Base          
    belongs_to :user
    attr_accessible :lat, :long, :radius, :region, :user_id
end
