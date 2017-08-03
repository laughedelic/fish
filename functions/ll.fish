function ll --wraps exa -d "An alias for exa with some defaults"
    exa --git --long --header --classify --group-directories-first $argv
end
