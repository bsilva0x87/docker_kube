#!/bin/bash
set -e

# Clear cache, socket and screenshot files from tmp folder.
# tmp:cache:clear, tmp:sockets:clear, tmp:screenshots:clear
bundle exec rake tmp:clear

# Container's main process (Dockerfile).
exec "$@"