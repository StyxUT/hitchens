# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

[
    {:id => 1, :characteristic => "Virulence", :description => "The relative ability of a microorganism to causedisease; degree of pathogenicity."},
    {:id => 2, :characteristic => "Latent Period", :description => "The time between becoming infected and becoming infectious."},
    {:id => 3, :characteristic => "Lethality", :description => "The likelihood of causing death."},
    {:id => 4, :characteristic => "Transmission Routes", :description => "The modes of transmitting the virus.  (i.e. touch, Food, vector, fomites)"},
    {:id => 5, :characteristic => "Infectious Period", :description => "The duration of contagiousnes."},
].each do |attributes|
    Characteristic.find_or_create_by_characteristic(attributes)
end
