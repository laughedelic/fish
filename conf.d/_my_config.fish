# use j for autojump (z plugin)
set -U Z_CMD "j"

# default editor
set -x VISUAL "atom-beta --wait"
set -x EDITOR $VISUAL

# Vi + Emacs keybindings:
fish_hybrid_key_bindings
fish_vi_cursor

# set -x fish_cursor_default block
# set -x fish_cursor_insert line
# set -x fish_cursor_visual underscore
# set -g 'fish_cursor_replace-one' underscore

set -x LANG 'en_US.UTF-8'
