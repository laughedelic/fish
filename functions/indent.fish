function indent --argument file
    cat $file | fish_indent >$file
    cat $file
end
