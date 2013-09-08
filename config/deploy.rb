load "deploy/assets"
#require "bundler/capistrano"
require 'capistrano-unicorn'

set :application, "00promise_rails"
set :repository,  "git@github.com:00promise/00promise_rails.git"

set :scm, :git
set :branch, "develop" #cap -S branch=branchname deploy
set :keep_releases, 5
set :user, "root"

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

# role :web, "your web-server here"                          # Your HTTP server, Apache/etc
# role :app, "your app-server here"                          # This may be the same as your `Web` server
# role :db,  "your primary db-server here", :primary => true # This is where Rails migrations will run
# role :db,  "your slave db-server here"

server "211.110.130.122", :app, :web, :db

set :deploy_to, "/srv"
set :deploy_via, :remote_cache
set (:bundle_cmd) { "#{release_path}/bin/bundle" }

after 'deploy:restart', 'unicorn:reload'   # app IS NOT preloaded
after 'deploy:restart', 'unicorn:restart'  # app preloaded

set :default_environment, {
  'PATH' => "$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH"
}
# cap unicorn:start
# cap unicorn:stop
# cap unicorn:reload

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

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