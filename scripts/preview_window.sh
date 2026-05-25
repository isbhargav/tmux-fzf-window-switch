#!/usr/bin/env bash

window_spec="${1}"
IFS=':' read -r window_index window_name <<< "$window_spec"

if [ -z "${window_index}" ]; then
    echo "Invalid window specification: '${window_spec}'"
    exit 1
fi

active_pane=$(tmux list-panes -t ":${window_index}" -F '#{pane_id} #{pane_active}' | awk '$2 == "1" {print $1}')

if [ -z "${active_pane}" ]; then
    echo "No active pane found for window ${window_index}"
    exit 1
fi

tmux capture-pane -ep -t "${active_pane}"
