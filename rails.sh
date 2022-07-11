#!/bin/sh
ln -snf /usr/share/zoneinfo/America/Santiago /etc/localtime && echo "America/Santiago" > /etc/timezone
rm -rf /usr/src/app/tmp/pids/server.pid
RAILS_ENV=production bundle exec rails db:create
RAILS_ENV=production bundle exec rails db:migrate
RAILS_ENV=production bundle exec rails db:seed
RAILS_ENV=production rails assets:precompile
RAILS_ENV=production bundle exec rails s -p 3000 -b '0.0.0.0'