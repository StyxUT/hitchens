class User < ActiveRecord::Base  

    has_many :geofences, :dependent => :destroy
    attr_accessible :device_id
end
