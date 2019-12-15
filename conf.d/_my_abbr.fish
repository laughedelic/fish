# it should run only once on plugin install
if not set -q _abbr_set
    echo 'Creating abbreviations...'

    # general:
    abbr a  'atom'

    # git:
    abbr g    'git'
    abbr gb   'git branch'
    abbr ga   'git add'
    abbr gs   'git status -s'
    abbr gco  'git checkout'
    abbr gc   'git commit'
    abbr gcm  'git commit -m'
    abbr gca  'git commit -am'
    abbr gd   'git diff'
    abbr gp   'git push'
    abbr gpf  'git push --force-with-lease'
    abbr gl   'git pull'
    abbr glf  'git pull --tags --force --prune'
    abbr gf   'git fetch --tags --force --prune'
    abbr gpr  'git pull-request'
    abbr gdm  'git delete-merged-branches'
    abbr glg  'git log'
    abbr gsw  'git switch'
    abbr gsb  'git switch (git base)'
    abbr gsm  'git switch master'
    abbr gsp  'git switch -'

    # exa:
    abbr la 'll -a'
    abbr lt 'll -TL2'

    set -U _abbr_set true
end
