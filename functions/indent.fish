function indent --argument file
    set -l indented (fish_indent < $file)
    rm $file
    for line in $indented
        echo $line >> $file
    end
    cat $file
end
