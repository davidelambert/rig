alias ll="ls -hAlF --group-directories-first"

alias pyenv-install-base="python -m pip install -U setuptools wheel twine autopep8 pycodestyle pydocstyle ipython ipykernel pyqt5"
alias pyenv-install-ds="python -m pip install -U numpy scipy pandas sympy jupyter jupyterlab statsmodels scikit-learn matplotlib seaborn plotly plotnine lxml beautifulsoup4"

alias backup="$HOME/projects/backups/home-backup.sh"
alias backup-size="du -sh --exclude-from=$HOME/backup_excludes"
alias zotero-backup="$HOME/projects/backups/zotero-backup.sh"

alias musicmode="$HOME/projects/scripts/musicmode.sh"
alias downshift="python $HOME/projects/scripts/downshift.py"
alias dprof="$HOME/projects/scripts/dprof.sh"

alias git-compare="$HOME/projects/scripts/git-compare.sh"
alias git-graph="git log --graph --all --oneline"

alias reboot-aws="aws ec2 reboot-instances --instance-ids $(cat $HOME/.aws/.delamb-server)"

alias r="radian"

alias ul="sudo apt update ; apt list -u"

alias clunker="ssh clunker.lan -t bash"
