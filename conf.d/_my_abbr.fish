# it should run only once on plugin install
if not set -q _abbr_set
    echo 'Creating abbreviations...'

    # general:
    abbr fi fisher
    abbr dev 'cd /Users/laughedelic/dev'
    abbr a  'atom'
    abbr ab 'atom-beta'
    abbr tr 'trash'
    abbr rmrf 'rm -rf'

    # aws:
    abbr awsls 'aws s3 ls --human-readable s3://'

    # git:
    abbr g    'git'
    abbr gb   'git branch'
    abbr gbd  'git branch -d'
    abbr ga   'git add'
    abbr gst  'git status'
    abbr gs   'git status -s'
    abbr gco  'git checkout'
    abbr gcb  'git checkout -b'
    abbr gcom 'git checkout master'
    abbr gc   'git commit'
    abbr gcm  'git commit -m'
    abbr gca  'git commit -am'
    abbr gd   'git diff'
    abbr gp   'git push'
    abbr gl   'git pull'

    # exa:
    abbr la 'll -a'
    abbr lt 'll -TL2'

    set -U _abbr_set true
end
