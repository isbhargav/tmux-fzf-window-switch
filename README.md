# TMUX FZF Window Switch

Fuzzy-find and switch between windows in your current tmux session using fzf. If the window doesn't exist, create it.

## Features

1. Fuzzy search and switch windows in the current session.
2. Create new windows when no match is found.
3. Optional preview of window contents.

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

4. **Open FZF for Window Switching:**

   Press `prefix + Ctrl + f` to open FZF in a popup.

5. **Creating New Windows:**

   If you type a window name that doesn't exist, you will be prompted to create it.

## Customize

### Key binding

```bash
set -g @fzf-goto-window 'key binding'
```

> Eg. to use `w`:

```bash
set -g @fzf-goto-window 'w'
```

#### Without prefix

```bash
set -g @fzf-goto-window-without-prefix 'true'
```

### Window dimensions

```bash
set -g @fzf-goto-win-width 70
set -g @fzf-goto-win-height 20
```

### Preview window on the side

Shows the content of the selected window's active pane.

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

This plugin is based on [cutbypham/tmux-fzf-session-switch](https://github.com/cutbypham/tmux-fzf-session-switch), adapted to fuzzy-find over windows instead of sessions.

## License

[GPL-3.0](LICENSE)
