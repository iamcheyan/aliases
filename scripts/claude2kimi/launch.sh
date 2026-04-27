#!/bin/bash
set -a
source "$(dirname "$0")/.env"
set +a
claude --dangerously-skip-permissions
