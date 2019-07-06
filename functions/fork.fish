function fork --argument-names arg prefix --description 'Clones a repository to <prefix>/<user>/<name> and jumps there'

    set -l user (git config --global github.user; or whoami)
    or begin
        echo 'Error: github.user is unset!'
        print_usage
        return 1
    end

    function print_usage
        echo 'Clones a repository to <prefix>/<user>/<name>, jumps there and sets up the remotes:'
        echo '* `upstream` corresponds to the repository you fork from'
        echo '* `origin`   corresponds to your fork'
        echo
        echo 'Usage: fork [https://github.com/]<org>/<name>[.git] [<prefix>]'
        echo
        echo "Default <prefix> is stored in the universal var \$clone_prefix: $clone_prefix"
        echo "Variable <user> is set from the global github.user setting: "(git config --global github.user)
    end

    test (count $argv) = 0
    or [ $argv[1] = "-h" ]
    or [ $argv[1] = "--help" ]
    and print_usage; and return 0

    set -l matches (string match -i -r -- '(github.com/)?([^/]+/[^/?]+)' "$arg")
    set -l fork $matches[-1]

    test -z "$prefix"
    and set -l prefix $clone_prefix

    set -l destination "$prefix/$fork"

    test -d $destination
    and echo "$destination already exists"
    or git clone https://github.com/$fork.git $destination
    and ln -s $destination "$prefix/$fork"

    cd $destination
    or begin
        print_usage
        return 1
    end

    git remote rename origin upstream
    git remote add origin https://github.com/$fork.git

    echo
    echo 'git remotes:'
    echo '* upstream: '(git remote get-url upstream)
    echo '* origin:   '(git remote get-url origin)
end
