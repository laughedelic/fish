# use j for autojump (z plugin)
set -U Z_CMD "j"

# default editor
set -U VISUAL "atom-beta --wait"
set -U EDITOR $VISUAL

# VI-keybindings:
fish_vi_key_bindings
fish_vi_cursor

# remove when fish-2.3.1 is released (https://github.com/fish-shell/fish-shell/issues/3067)
# set -g __fish_vi_mode 0

set -g fish_cursor_default block
set -g fish_cursor_insert line
set -g fish_cursor_visual underscore
# set -g 'fish_cursor_replace-one' underscore

set -x LANG 'en_US.UTF-8'
