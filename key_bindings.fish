function key_bindings

    bind \cl history-search-backward
    bind \ck history-search-forward

    # resets the command line, but leaves the command (without executing it)
    bind \cx 'echo; commandline -f repaint; commandline -r ""'

    bind \cf 'accept-autosuggestion execute'
end
