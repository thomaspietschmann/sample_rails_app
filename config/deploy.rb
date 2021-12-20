set :rbenv_ruby, '2.7.5'
set :rbenv_path, "~/.rbenv"
set :rbenv_type, :user
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}

set :passenger_restart_with_touch, false

set :application, "sample_rails_app"
set :repo_url, "https://github.com/thomaspietschmann/sample_rails_app.git"
set :branch, "capistrano-deploy"
set :deploy_to, "/home/rails/#{fetch :application}"
append :linked_files, "config/master.key"
set :keep_releases, 5
set :format, :pretty
set :ssh_options,     { forward_agent: true, user: fetch(:user), keys: %w(~/.ssh/id_rsa.pub) }