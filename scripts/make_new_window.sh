#!/usr/bin/env bash

WINDOW_NAME=$1

function main {
  tmux new-window -d -n "$WINDOW_NAME"
  tmux select-window -t "$WINDOW_NAME"
}
main
