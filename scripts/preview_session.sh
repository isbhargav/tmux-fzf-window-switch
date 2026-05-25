#!/usr/bin/env bash

session_name="${1}"

if [ -z "${session_name}" ]; then
    echo "No session name provided"
    exit 1
fi

active_pane=$(tmux list-panes -t "${session_name}" -F '#{pane_id} #{pane_active}' | awk '$2 == "1" {print $1}')

if [ -z "${active_pane}" ]; then
    echo "No active pane found for session ${session_name}"
    exit 1
fi

tmux capture-pane -ep -t "${active_pane}"
