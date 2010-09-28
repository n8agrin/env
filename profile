###$MYENV path ###
MYENV='.env'

umask 0007

export HISTSIZE=10000
export RAILS_ENV='development'
export RUBY_HEAP_MIN_SLOTS=250000
export RUBY_HEAP_SLOTS_INCREMENT=250000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=50000000
export PATH=~/bin:~/workspace/twitter-utilities:/opt/local/bin:/usr/local/mysql/bin:$PATH
export rvm_path=/usr/local/rvm

if [[ -s $rvm_path/scripts/rvm ]] ; then source $rvm_path/scripts/rvm ; fi

source /opt/local/share/doc/git-core/contrib/completion/git-completion.bash

. /etc/bash_completion

if [ "$USER" = "root" ]; then
  PS1='\e[1;31m[\u@\h \W$(__git_ps1 " (%s)")]\$\e[0m '
else
  PS1='[\u@\h \w$(__git_ps1 " (%s)")]\$ '
fi

### Special Mac Configs ###

# For colors see installation instructions here:
# http://blog.infinitered.com/entries/show/6
# Also be sure to start Terminal.app in 32 bit mode
export CLICOLOR=1;

#if [[ `uname -a` =~ "Darwin" ]]; then
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
#    SYM_LINK=fx
#    SOCKET=Fx
#    PIPE=dx
#    EXE=Cx
#    BLOCK_SP=Dx
#    CHAR_SP=Dx
#    EXE_SUID=hb
#    EXE_GUID=ad
#    DIR=cx
#    DIR_STICKY=cx
#    DIR_WO_STICKY=fx
#
#    export LSCOLORS="$DIR$SYM_LINK$SOCKET$PIPE$EXE\
#    $BLOCK_SP$CHAR_SP$EXE_SUID$EXE_GUID\
#    $DIR_STICKY$DIR_WO_STICKY"
#    export CLICOLOR=1
#fi

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



