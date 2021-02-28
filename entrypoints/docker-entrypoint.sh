#!/bin/sh

set -e

echo "Environment: $RAILS_ENV"

# Remove pre-existing puma server.pid
if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

# run passed commands
${@}