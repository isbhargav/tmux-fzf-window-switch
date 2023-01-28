# TMUX FZF Window Switch


## Getting started

- Install the [tpm](https://github.com/tmux-plugins/tpm) Tmux Plugin Manager.
- Put `set -g @plugin 'isbhargav/tmux-fzf-window-switch'` into your tmux config
- Use tpm to install this plugin. Default you can press `prefix + I` (`I` is
  `shift + i` = I)

- `Prefix + Ctrl + l`: Open up fzf in a new tab. (e.g. prefix = ctrl + a. Hold ctrl ->
  press a -> press l -> done)
- If you type a name that doesn't exist, you will be prompted to create it. 

> If this name conflicts with another window name -> add a double/single quotes `'example'`

## Requirements

- [Tmux >= 3.3a](https://github.com/isbhargav/tmux-fzf-window-switch/pull/5/files) `pop-up menu`
- [fzf](https://github.com/junegunn/fzf)
- Rg (recommended but not required)

## Credits

This plugin is heavily inspired from https://github.com/rcribbs/tmux-fzf-session-switch

