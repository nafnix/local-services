#!/usr/bin/env bash
set -eEuo pipefail
test "${DEBUG:-}" && set -x

# Pre-pre-flight? 🤷
if [[ -n "${MSYSTEM:-}" ]]; then
  echo "Seems like you are using an MSYS2-based system (such as Git Bash) which is not supported. Please use WSL instead."
  exit 1
fi

source install/create-docker-volumes.sh
