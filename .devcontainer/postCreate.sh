#!/usr/bin/env bash
set -e

if ! git config --global user.name >/dev/null; then
  echo "Git user.name is not set."
  echo "Run: git config --global user.name \"Your Name\""
fi

if ! git config --global user.email >/dev/null; then
  echo "Git user.email is not set."
  echo "Run: git config --global user.email \"you@school.edu\""
fi
