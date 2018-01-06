function gh_labels
    ghi label -D 'wontfix'
    ghi label -D 'duplicate'
    ghi label -D 'invalid'
    ghi label 'bug'              -c '#ee0701'
    ghi label 'enhancement'      -c '#84b6eb'
    ghi label 'good first issue' -c '#7057ff'
    ghi label 'Hacktoberfest'    -c '#ca864a'
    ghi label 'help wanted'      -c '#33aa3f'
    ghi label 'question'         -c '#cc317c'
    ghi label 'feature'          -c '#21ba75'
end
