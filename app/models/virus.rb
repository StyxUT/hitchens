class Virus < ActiveRecord::Base 
  has_many :virus_characteristics
  has_many :characteristics, :through => :virus_characteristics
  
  belongs_to :user 
  attr_accessible :user_id, :name
  
  validates :name, :presence => true, :uniqueness => true
  validates :user_id, :presence => true
end
                                                             
