class UserLocation < ActiveRecord::Base
  belongs_to :user
  attr_accessible :user_id, :latlon, :send_method, :timestamp   
  
  validates :user_id, :latlon, :send_method, :timestamp, :presence => true 
  
  EWKB = RGeo::WKRep::WKBGenerator.new(:type_format => :ewkb, :emit_ewkb_srid => true, :hex_format => true)
      
  # Create a simple mercator factory. This factory itself is
  # geographic (latitude-longitude) but it also contains a
  # companion projection factory that uses EPSG 3785.
  FACTORY = RGeo::Geographic.simple_mercator_factory

  # We're storing data in the database in the projection.
  # So data pulled straight from the "latlon" attribute will be in
  # projected coordinates.
  set_rgeo_factory_for_column(:latlon, FACTORY.projection_factory)

  # To interact in projected coordinates, just use the "latlon"
  # attribute directly.
  def latlon_projected
    self.latlon
  end
  def latlon_projected=(value)
    self.latlon = value
  end

  # To use geographic (lat/lon) coordinates, convert them using
  # the wrapper factory.
  def latlon_geographic
    FACTORY.unproject(self.latlon)
  end
  def latlon_geographic=(value)
    self.latlon = FACTORY.project(value)
  end
  
  def self.get_intersections
      segment = EWKB.generate(FACTORY.project(line_string))
      
  end
end
