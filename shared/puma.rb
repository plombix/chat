#!/usr/bin/env puma

directory '/home/deploy/apps/chat/current'
rackup "/home/deploy/apps/chat/current/config.ru"
environment 'production'

pidfile "/home/deploy/apps/chat/shared/tmp/pids/puma.pid"
state_path "/home/deploy/apps/chat/shared/tmp/pids/puma.state"
stdout_redirect '/home/deploy/apps/chat/current/log/puma.error.log', '/home/deploy/apps/chat/current/log/puma.access.log', true


threads 4,16

bind 'unix:///home/deploy/apps/chat/shared/tmp/sockets/puma.sock'

workers 0



preload_app!


on_restart do
  puts 'Refreshing Gemfile'
  ENV["BUNDLE_GEMFILE"] = "/home/deploy/apps/chat/current/Gemfile"
end


on_worker_boot do
  ActiveSupport.on_load(:active_record) do
    ActiveRecord::Base.establish_connection
  end
end

