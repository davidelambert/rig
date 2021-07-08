# ALWAYS source .bashrc, even on login shells (e.g. tmux!)
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi


# Add user-level binary paths to PATH (makes pip happy)
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi
if [ -d "$HOME/.local/bin" ] ; then
    export PATH="$HOME/.local/bin:$PATH"
fi


# virtualenvwrapper stuff
if [ -f "$HOME/.local/bin/virtualenvwrapper.sh" ] ; then
    export WORKON_HOME=$HOME/.virtualenvs
    export PROJECT_HOME=$HOME
    source $HOME/.local/bin/virtualenvwrapper.sh
fi


# stata stuff
if [ -d "$HOME/.local/bin/stata16" ] ; then
    export PATH="$HOME/.local/bin/stata16:$PATH"
fi

# AWS Elastic Beanstalk stuff
if [ -d "$HOME/.ebcli-virtual-env/executables" ] ; then
    export PATH="$HOME/.ebcli-virtual-env/executables:$PATH"
fi
    
    
    
    
