lock "~> 3.10.2"

set :application, "sebki"

set :repo_url, "https://github.com/mohamedsugroo/secnet.git"

append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'

append :linked_files, 'config/database.yml', 'config/secrets.yml'

set :deploy_to, '/home/deploy/sebki'
