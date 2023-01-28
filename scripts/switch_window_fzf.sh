#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

function main {
  local windows
  local window
  local query
  local win_arr
  local retval
  windows=$(tmux list-windows -F "#{window_name}" |
    fzf --select-1 --exit-0 --print-query --reverse)
  retval=$?

  IFS=$'\n' read -rd '' -a win_arr <<<"$windows"

  window=${win_arr[1]}
  query=${win_arr[0]}

  if [ $retval == 0 ]; then
    if [ "$window" == "" ]; then
      window="$query"
    fi
    tmux select-window -t "$window"
  elif [ $retval == 1 ]; then
    tmux command-prompt -b -p "Press enter to create and go to [$query] window" \
      "run '$CURRENT_DIR/make_new_window.sh \"$query\" \"%1\"'"
  fi
}
main
