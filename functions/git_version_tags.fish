function git_version_tags -d "Lists all tags that look like a version: X.Y.Z or vX.Y.Z"

  git for-each-ref \
    --sort=-taggerdate \
    --format='%(refname:short)' \
    'refs/tags/*' \
  | grep '^v\?\d\+\.\d\+\.\d\+'

end
