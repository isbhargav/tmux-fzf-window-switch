#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

default_key_bindings_goto="C-l"
default_width=50
default_height=10

tmux_option_goto="@fzf-goto-window"
tmux_option_width="@fzf-goto-win-width"
tmux_option_height="@fzf-goto-win-height"

get_tmux_option() {
  local option=$1
  local default_value=$2
  local option_value=$(tmux show-option -gqv "$option")
  if [ -z "$option_value" ]; then
    echo $default_value
  else
    echo $option_value
  fi
}

function set_goto_window_bindings {
  local key_bindings=$(get_tmux_option "$tmux_option_goto" \
    "$default_key_bindings_goto")
  local width=$(get_tmux_option "$tmux_option_width" \
    "$default_width")
  local height=$(get_tmux_option "$tmux_option_height" \
    "$default_height")

  local key
  for key in $key_bindings; do
    tmux bind "$key" display-popup -w "$width" -h "$height" -y 15 -E "$CURRENT_DIR/scripts/switch_window_fzf.sh"
  done
}

function main {
  set_goto_window_bindings
}
main
