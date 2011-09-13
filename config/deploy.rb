set :application, "WhatTheNumbers"
set :repository,  "git@github.com:TingChengLin/cap_test.git"

set :scm, :git
set :deploy_via, :remote_cache
set :use_sudo, false
set :branch, "master"
set :deploy_to, "/home/victor/testing/cap_test"
set :rake, "/var/lib/gems/1.8/bin/rake"

set :user, "victor"
set :use_sudo, false

set :scm_username, "TingChengLin" # svn user name
set :scm_password, "6yhnnhy6"
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "204.232.200.137"                          # Your HTTP server, Apache/etc
role :app, "204.232.200.137"                          # This may be the same as your `Web` server
role :db,  "204.232.200.137", :primary => true        # This is where Rails migrations will run
set :rails_env, "development"


# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
