function clone --argument-names arg prefix --description 'Clones a repository to <prefix>/<org>/<name> and jumps there'

    set -q clone_prefix
    or set -U clone_prefix ~/dev

    function print_usage
        echo 'Clones a repository to <prefix>/<org>/<name> and jumps there'
        echo
        echo 'Usage: clone [https://github.com/]<org>/<name>[.git] [<prefix>]'
        echo
        echo "Default <prefix> is stored in the universal var \$clone_prefix: $clone_prefix"
    end

    test (count $argv) = 0
    or [ $argv[1] = "-h" ]
    or [ $argv[1] = "--help" ]
    and print_usage; and return 0

    set -l org (basename (dirname "$arg"))
    set -l name (basename "$arg" .git)
    set -l repo "$org/$name"

    test -z "$prefix"
    and set -l prefix $clone_prefix

    test -d $prefix/$repo
    and echo "$repo already exists"
    or git clone https://github.com/$repo.git $prefix/$repo

    cd $prefix/$repo
    or begin
        print_usage
        return 1
    end
end
