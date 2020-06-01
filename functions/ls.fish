function ls --wraps exa -d "An alias for exa"
    exa --classify --group-directories-first $argv
end
