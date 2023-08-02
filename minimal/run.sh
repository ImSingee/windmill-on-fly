#!/bin/bash

/usr/src/app/windmill &

caddy run --config "/etc/caddy/Caddyfile" --adapter "caddyfile" &
  
# Wait for any process to exit
wait -n
  
# Exit with status of process that exited first
exit $?