###$MYENV path ###
MYENV='$MYENV'

### Special Mac Configs ###
if [[ `uname -a` =~ "Darwin" ]]; then

    # Colors #
    # Colors
    # The available color codes are:
    #
    #    a -- black
    #    b -- red
    #    c -- green
    #    d -- brown
    #    e -- blue
    #    f -- magenta
    #    g -- cyan
    #    h -- light gray
    #    A -- bold black, usually shows up as dark gray
    #    B -- bold red
    #    C -- bold green
    #    D -- bold brown, usually shows up as yellow
    #    E -- bold blue
    #    F -- bold magenta
    #    G -- bold cyan
    #    H -- bold light gray; looks like bright white
    #    x -- default foreground or background

    SYM_LINK=fx
    SOCKET=Fx
    PIPE=dx
    EXE=Cx
    BLOCK_SP=Dx
    CHAR_SP=Dx
    EXE_SUID=hb
    EXE_GUID=ad
    DIR=cx
    DIR_STICKY=cx
    DIR_WO_STICKY=fx

    export LSCOLORS="$DIR$SYM_LINK$SOCKET$PIPE$EXE\
    $BLOCK_SP$CHAR_SP$EXE_SUID$EXE_GUID\
    $DIR_STICKY$DIR_WO_STICKY"
    export CLICOLOR=1
fi

# Import various other$MYENV files
# Alias
if [ -f $HOME/$MYENV/alias ]; then
	. $HOME/$MYENV/alias
fi

# Splunk cfg
if [ -f $HOME/$MYENV/splunkrc ]; then
	. $HOME/$MYENV/splunkrc
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



        
