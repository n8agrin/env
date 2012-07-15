MYENV='.env'

export NODE_PATH="/usr/local/lib/node_modules"
export PATH=~/bin:/usr/local/bin:/usr/local/sbin:~/node_modules/.bin:$PATH
export PATH=/usr/local/share/python:$PATH
eval "$(rbenv init -)"

export DJANGO_SETTINGS_MODULE=sqlcharts.settings
export PYTHONPATH=/Users/nate/chartio/sqlcharts:/Users/nate/chartio/sqlcharts/sqlcharts

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion

  if [ "$USER" = "root" ]; then
    PS1='\e[1;31m[\u@\h \W$(__git_ps1 " (%s)")]\$\e[0m '
  else
    PS1='[\u@\h \w$(__git_ps1 " (%s)")]\$ '
  fi
fi

#PS1='\e[0;32m\u@\h\e[m:\e[0;34m\w\e[m\$ ' #Prompt user host:path$
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad

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



