# default editor
set -x VISUAL "code --wait --reuse-window"
set -x EDITOR $VISUAL

# Vi + Emacs keybindings:
fish_hybrid_key_bindings
fish_vi_cursor

set -x LANG 'en_US.UTF-8'

set -x FZF_DEFAULT_OPTS '--height "40%" --reverse --ansi --border --inline-info --tabstop=4'

zoxide init fish | source
