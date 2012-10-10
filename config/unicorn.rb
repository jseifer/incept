working_directory "/var/src/incept"
pid "/var/src/incept/tmp/pids/unicorn.pid"
stderr_path "/var/src/incept/log/unicorn.log"
stdout_path "/var/src/incept/log/unicorn.log"

listen "/tmp/unicorn.incept.sock", :backlog => 64
worker_processes 2
timeout 30