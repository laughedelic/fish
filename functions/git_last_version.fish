function git_last_version -d ""
  git_version_tags | head -1
end
