# use j for autojump (z plugin)
set -U Z_CMD "j"

# default editor
set -U VISUAL "atom-beta --wait"
set -U EDITOR $VISUAL

set -U fish_color_search_match --background=cyan

set -l IFS; set -U fish_greeting (fish_logo); set -e IFS

# set -g fish_key_bindings fish_vi_key_bindings

# set -g fish_cursor_default underscore
# set -g fish_cursor_insert line
# # set -g fish_cursor_replace-one underscore
# set -g fish_cursor_visual underscore
