require "capistrano/setup"
require "capistrano/deploy"
require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git


require 'capistrano/rails'
require "capistrano/rails/migrations"
require 'capistrano/passenger'
require 'capistrano/rbenv'
set :rbenv_type, :user
set :rbenv_ruby, '2.5.0'


Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
