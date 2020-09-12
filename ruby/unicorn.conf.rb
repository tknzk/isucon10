listen (ENV.fetch('SERVER_PORT', 1323)).to_i

worker_processes (ENV.fetch('WORKER_NUM', 16)).to_i

stderr_path File.expand_path('../log/unicorn_stderr.log', __FILE__)
stdout_path File.expand_path('../log/unicorn_stdout.log', __FILE__)
