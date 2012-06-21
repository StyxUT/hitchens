class UserLocation < ActiveRecord::Base
  attr_accessible :user_id, :lat, :long, :send_method, :timestamp
end
