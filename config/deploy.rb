if ENV['beta'] 
    set :domain, "10.0.1.206"
    set :rails_env, "beta"
else
    set :domain, "10.0.1.206"
    set :rails_env, "production"
end
        
set :application, "hitchens"
set :user, 'eric'
set :repository,  "git://github.com/StyxUT/hitchens.git"

set :deploy_to, "~/Sites/#{application}"
set :deploy_via, :remote_cache

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, domain                          # Your HTTP server, Apache/etc
role :app, domain                          # This may be the same as your `Web` server
role :db, domain, :primary => true         # This is where Rails migrations will run

default_run_options[:pty] = true


task run "cd #{deploy_to}/current && rvm use `cat ruby_version`@hitchens --create && bundle && unicorn_rails -c config/unicorn.rb"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:


# namespace :deploy do
#   task :bundle_gems do
#       run "cd #{deploy_to}/curent && bundle install vendor/gems"
#   end
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end