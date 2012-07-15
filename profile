MYENV='.env'

#export NODE_PATH="/usr/local/lib/node:/usr/local/lib/node_modules"
export NODE_PATH="/usr/local/lib/node_modules"
export PATH=~/bin:/usr/local/bin:/usr/local/sbin:~/node_modules/.bin:$PATH
export PATH=/usr/local/share/python:$PATH
eval "$(rbenv init -)"

export DJANGO_SETTINGS_MODULE=sqlcharts.settings
export PYTHONPATH=/Users/nate/chartio/sqlcharts:/Users/nate/chartio/sqlcharts/sqlcharts

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion

  if [ "$USER" = "root" ]; then
    PS1='\e[1;31m[\u@\h \W$(__git_ps1 " (%s)")]\$\e[0m '
  else
    PS1='[\u@\h \w$(__git_ps1 " (%s)")]\$ '
  fi
fi


### Special Mac Configs ###

# For colors see installation instructions here:
# http://blog.infinitered.com/entries/show/6
# Also be sure to start Terminal.app in 32 bit mode
export CLICOLOR=1;

# if [[ `uname -a` =~ "Darwin" ]]; then
# 
#    # Colors #
#    # Colors
#    # The available color codes are:
#    #
#    #    a -- black
#    #    b -- red
#    #    c -- green
#    #    d -- brown
#    #    e -- blue
#    #    f -- magenta
#    #    g -- cyan
#    #    h -- light gray
#    #    A -- bold black, usually shows up as dark gray
#    #    B -- bold red
#    #    C -- bold green
#    #    D -- bold brown, usually shows up as yellow
#    #    E -- bold blue
#    #    F -- bold magenta
#    #    G -- bold cyan
#    #    H -- bold light gray; looks like bright white
#    #    x -- default foreground or background
# 
#    # SYM_LINK=fx
#    # SOCKET=Fx
#    # PIPE=dx
#    # EXE=Cx
#    # BLOCK_SP=Dx
#    # CHAR_SP=Dx
#    # EXE_SUID=hb
#    # EXE_GUID=ad
#    # DIR=cx
#    # DIR_STICKY=cx
#    # DIR_WO_STICKY=fx
#    # 
#    # export LSCOLORS="$DIR$SYM_LINK$SOCKET$PIPE$EXE\
#    # $BLOCK_SP$CHAR_SP$EXE_SUID$EXE_GUID\
#    # $DIR_STICKY$DIR_WO_STICKY"
#    export CLICOLOR=1
# fi

# Import various other$MYENV files
# Alias
if [ -f $HOME/$MYENV/alias ]; then
    . $HOME/$MYENV/alias
fi

# Secrets
if [ -f $HOME/$MYENV/secrets ]; then
    . $HOME/$MYENV/secrets
fi

# Create symlinks if necessary
if [ ! -h $HOME/.vimrc ] && [ -f $HOME/.vimrc ]; then
    mv $HOME/.vimrc $HOME/.vimrc.ori
fi

if [ ! -h $HOME/.vimrc ]; then
    ln -s $HOME/$MYENV/vimrc $HOME/.vimrc
fi



