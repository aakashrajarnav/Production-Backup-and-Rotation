#!/bin/bash

run_cmd() {
  "$@" || { echo "Command failed: $@"; exit 1; }
}

run_cmd mkdir fun2
run_cmd echo "do production work"
