### Alias ###
alias l='ls -la'

### Path ###
export PATH=$HOME/opt/local/bin:$PATH

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

##
# Your previous /Users/n8agrin/.profile file was backed up as /Users/n8agrin/.profile.macports-saved_2009-08-15_at_17:24:18
##

# MacPorts Installer addition on 2009-08-15_at_17:24:18: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH=/opt/local/share/man:$MANPATH
# Finished adapting your MANPATH environment variable for use with MacPorts.

export PATH=/usr/local/bin:/opt/local/bin:$PATH

# Import the splunkrc file
source $HOME/.env/.splunkrc
source $HOME/.env/.secrets

