function start_handler_dev
  # Handler environment variables for db connection:
  set -x ALERTBUSDB_HOST (docker-machine ip default)
  set -x ALERTBUSDB_NAME ongo_dev
  set -x ALERTBUSDB_PASSWORD newcontext
  set -x CONSOLEDB_HOST (docker-machine ip default)
  set -x CONSOLEDB_NAME fxs_console_development
  set -x CONSOLEDB_PASSWORD newcontext
  docker_daemon_start
end
