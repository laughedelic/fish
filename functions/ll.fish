function ll --wraps exa -d "An alias for exa with some defaults"
    exa --git --long --header --classify --group-directories-first --no-user --no-permissions $argv
end
