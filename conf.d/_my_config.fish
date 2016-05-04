function fish_right_prompt
  gtm prompt-status
end

# use j for autojump (z plugin)
set -U Z_CMD "j"

# default editor
set -U VISUAL "atom-beta --wait"
set -U EDITOR $VISUAL

set -U fish_color_search_match --background=cyan
