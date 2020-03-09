#!/bin/bash -e

if ! command -v hugo; then
  echo "hugo required please install hugo first, see https://gohugo.io/getting-started/installing/"
  exit 1
fi
# Starts a Hugo dev server to locally develop the workshop
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR/../workshop" && hugo server -D  
