# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

[
    {:characteristic => "Virulence", :description => "The relative ability of a microorganism to causedisease; degree of pathogenicity."},
    {:characteristic => "Latent Period", :description => "The time between becoming infected and becoming infectious."},
    {:characteristic => "Lethality", :description => "The likelihood of causing death."},
    {:characteristic => "Transmission Routes", :description => "The modes of transmitting the virus.  (i.e. touch, Food, vector, fomites)"},
    {:characteristic => "Infectious Period", :description => "The duration of contagiousnes."},
].each do |attributes|
    Characteristic.find_or_create_by_characteristic(attributes)
end
