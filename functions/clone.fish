function clone --argument-names arg prefix --description 'Clones a repository to <prefix>/<org>/<name> and jumps there'

  set -q clone_prefix
  or set -U clone_prefix ~/dev

  function print_usage
    echo
    echo 'Usage: clone [https://github.com/]<org>/<name>[.git] [<prefix>]'
    echo "Default <prefix> is stored in the universal var \$clone_prefix: $clone_prefix"
  end

  if test (count $argv) = 0
    print_usage
    return 1
  end

  set org  (basename (dirname "$arg"))
  set name (basename "$arg" .git)
  set repo "$org/$name"

  test -z "$prefix"; and set prefix $clone_prefix

  git clone https://github.com/$repo.git $prefix/$repo
  and cd $prefix/$repo
  or print_usage
end
