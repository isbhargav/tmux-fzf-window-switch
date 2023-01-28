# TMUX FZF Window Switch


## Getting started

- Install the [tpm](https://github.com/tmux-plugins/tpm) Tmux Plugin Manager.
- Put `set -g @plugin 'thuanOwa/tmux-fzf-window-switch'` into your tmux config
- Use tpm to install this plugin. Default you can press `prefix + I` (`I` is
  `shift + i` = I)

- `Prefix + Ctrl + l`: Open up fzf in a new tab. (e.g. prefix = ctrl + a. Hold ctrl ->
  press a -> press l -> done)
- If you type a name that doesn't exist, you will be prompted to create it. 

> If this name conflicts with another session name -> add a double/single quotes `'example'`

## Requirements

- [Tmux >= 3.3a](https://github.com/isbhargav/tmux-fzf-window-switch/pull/5/files) `pop-up menu`
- [fzf](https://github.com/junegunn/fzf)
- Rg (recommended but not required)

## Customize

> 🫰Thanks to [@erikw](https://github.com/erikw)

### Key binding

```bash
set -g @fzf-goto-window 'key binding'
```

> Eg. to override the default session switcher in tmux available at `prefix` + s`:

```bash
set -g @fzf-goto-window 's'
```

### Window dimensions

```bash
set -g @fzf-goto-win-width WIDTH
set -g @fzf-goto-win-height HEIGHT
```

> Eg.

```bash
set -g @fzf-goto-win-width 70
set -g @fzf-goto-win-height 20
```

