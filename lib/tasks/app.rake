
namespace :app do

  task :ensure_development_environment => :environment do
    if Rails.env.production?
      raise "\nI'm sorry, Dave, I can't do that.\n(You're asking me to drop your production database.)"
    end
  end
       
  desc "Reset"
  task :reset => [:ensure_development_environment, "db:drop", "db:create", "db:migrate", "db:seed", "app:populate"]
        
  desc "Populate the database with UserLocations data."
  task :populate => :environment do
    [
      {:user_id => "1", :timestamp => "2012-01-25 01:30:00 +000", :send_method => "rake app:populate", :latlon => "POINT(1 1)"},
      {:user_id => "1", :timestamp => "2012-01-25 01:35:00 +000", :send_method => "rake app:populate", :latlon => "POINT(1 10)"},
      {:user_id => "2", :timestamp => "2012-01-25 01:30:00 +000", :send_method => "rake app:populate", :latlon => "POINT(5 5)"},
      {:user_id => "2", :timestamp => "2012-01-25 01:35:00 +000", :send_method => "rake app:populate", :latlon => "POINT(5 -5)"},
    ].each do |attributes|
      UserLocation.find_or_create_by_user_id_and_latlon(attributes)
    end
  end

end



