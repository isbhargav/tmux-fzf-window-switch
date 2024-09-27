#!/usr/bin/env bash

WINDOW_NAME=$1
ANSWER=$2

function main {
  local window
  local answer

  window=$WINDOW_NAME
  answer=$ANSWER

  if [ $answer == "y" ] || [ $answer == "Y" ]; then
    tmux new-window -d -n "$WINDOW_NAME"
    tmux select-window -t "$WINDOW_NAME"
  fi
}
main
