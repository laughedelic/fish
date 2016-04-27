function git_changelog \
  --argument range \
  --description "Prints git log in a way convenient for writing release notes"

  # default range is since the last version
  test -n "$range"; or set range (git_last_version)".."

  git --no-pager log --reverse --format="* %s" $range

end
