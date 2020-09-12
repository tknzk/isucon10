# listen (ENV.fetch('SERVER_PORT', 1323)).to_i
listen File.expand_path('../tmp/unicorn.sock', __FILE__)

worker_processes (ENV.fetch('WORKER_NUM', 32)).to_i

# stderr_path File.expand_path('../log/unicorn_stderr.log', __FILE__)
# stdout_path File.expand_path('../log/unicorn_stdout.log', __FILE__)
