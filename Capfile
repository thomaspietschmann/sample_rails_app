require "capistrano/setup"
require "capistrano/deploy"
require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git

require "capistrano/rails"
require "capistrano/passenger"
require "capistrano/rbenv"
require "capistrano/rbenv-install"

set :rbenv_type, :user
set :rbenv_ruby, '2.7.5'

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }