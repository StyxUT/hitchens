class UserLocation < ActiveRecord::Base
  attr_accessible :lat, :long, :timestamp, :user_id
end
