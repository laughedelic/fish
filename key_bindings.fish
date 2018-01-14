function key_bindings

    bind -M insert \cp history-search-backward
    bind -M insert \cn history-search-forward
    bind -M default \cp history-search-backward
    bind -M default \cn history-search-forward

    # resets the command line, but leaves the command (without executing it)
    bind -M insert \cx 'echo; commandline -f repaint; commandline -r ""'

    bind -M insert \cf 'commandline -f accept-autosuggestion execute'
end
