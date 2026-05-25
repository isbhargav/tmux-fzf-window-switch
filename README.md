# TMUX FZF Window Switch

Fuzzy-find and switch between sessions and windows in tmux using fzf. If the target doesn't exist, create it.

## Features

1. Fuzzy search and switch sessions (`prefix + Ctrl-f`).
2. Fuzzy search and switch windows in the current session (`prefix + Ctrl-o`).
3. Create new sessions/windows when no match is found.
4. Optional preview of pane contents.

## Requirements

- [Tmux >= 3.3a](https://github.com/tmux-plugins/tpm) (for the `pop-up menu` feature)
- [fzf](https://github.com/junegunn/fzf)

## Getting Started

1. **Install the Tmux Plugin Manager (TPM):**

   Follow the instructions at [https://github.com/tmux-plugins/tpm](https://github.com/tmux-plugins/tpm) to install TPM.

2. **Add the Plugin to Your Tmux Config:**

   Add the following line to your `~/.tmux.conf` file:

   ```
   set -g @plugin 'isbhargav/tmux-fzf-window-switch'
   ```

3. **Install the Plugin:**

   Use TPM to install the plugin. By default, press `prefix + I` (`I` is `Shift + i`).

4. **Usage:**

   - `prefix + Ctrl-f` — Fuzzy search over sessions
   - `prefix + Ctrl-o` — Fuzzy search over windows in the active session

5. **Creating New Sessions/Windows:**

   If you type a name that doesn't exist, you will be prompted to create it.

## Customize

### Key bindings

```bash
set -g @fzf-goto-session 'C-f'
set -g @fzf-goto-window 'C-o'
```

#### Without prefix

```bash
set -g @fzf-goto-without-prefix 'true'
```

### Window dimensions

```bash
set -g @fzf-goto-win-width 70
set -g @fzf-goto-win-height 20
```

### Preview window on the side

Shows the content of the selected target's active pane.

**Enable this option:**

```bash
set -g @fzf-goto-preview-enabled 'true'
```

**Custom dimensions when preview is enabled:**

```bash
set -g @fzf-goto-win-width-preview 80
set -g @fzf-goto-win-height-preview 20
```

## Credits

This plugin is based on [cutbypham/tmux-fzf-session-switch](https://github.com/cutbypham/tmux-fzf-session-switch).

## License

[GPL-3.0](LICENSE)
