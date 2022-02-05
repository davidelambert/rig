alias ll="ls -hAlFv --group-directories-first"

alias backup-size="du -sh --exclude-from=$HOME/backup_excludes"

alias reboot-delamb="aws ec2 reboot-instances --instance-ids $(cat ~/.aws/.delamb-server)"

# color profile aliases
alias prof-default="xcalib -c && sct"
alias prof-reset="xcalib -c && sct"
alias prof-dayvid="xcalib -c && xcalib -gc .7 -a"
alias prof-night1="xcalib -c && xcalib -gc .8 -a && sct 3600"
alias prof-night2="xcalib -c && xcalib -gc .8 -co 80 -a && sct 2700"
