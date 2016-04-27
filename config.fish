function fish_right_prompt
  gtm prompt-status
end

# use j for autojump (z plugin)
set -U Z_CMD "j"

# default editor
set -U VISUAL "atom-beta --wait"
set -U EDITOR $VISUAL

# fisherman needs this on fish-2.2, remove once on fish-2.3
for file in ~/.config/fish/conf.d/*.fish
    source $file
end
