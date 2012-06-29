class Virus < ActiveRecord::Base 
  belongs_to :user 
  attr_accessible :name
  
  validates :name, :presence => true  
end
                                                             
