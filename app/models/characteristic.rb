class Characteristic < ActiveRecord::Base
  has_many :virus_characteristics
  has_many :viruses, :through => :virus_characteristics


  attr_accessible :characteristic, :description
  validates :characteristic, :description, :presence => true

end
