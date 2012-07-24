class User < ActiveRecord::Base  
    has_many :viruses, :dependent => :destroy
    has_many :user_locations, :dependent => :destroy  
    
    attr_accessible :device_id               
    
    validates :device_id, :presence => true
end
