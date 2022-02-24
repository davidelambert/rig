alias ll="ls -hAlF --group-directories-first"
alias reboot-aws="aws ec2 reboot-instances --instance-ids $(cat $HOME/.aws/.delamb-server)"

alias backup="$HOME/projects/backups/home-backup.sh"
alias backup-size="du -sh --exclude-from=$HOME/backup_excludes"
alias zotero-backup="$HOME/projects/backups/zotero-backup.sh"

alias musicmode="$HOME/projects/scripts/musicmode.sh"
alias downshift="python $HOME/projects/scripts/downshift.py"
alias dprof="$HOME/projects/scripts/dprof.sh"
alias git-compare="$HOME/projects/scripts/git-compare.sh"

