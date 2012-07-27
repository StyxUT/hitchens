class Characteristic < ActiveRecord::Base
  attr_accessible :characteristic, :description
  validates :characteristic, :description, :presence => true

end
