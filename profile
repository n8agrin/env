export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules
export PATH=$PATH:$HOME/bin

# If using rbenv, load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion

  if [ "$USER" = "root" ]; then
    PS1='\e[1;31m[\u@\h \W$(__git_ps1 " (%s)")]\$\e[0m '
  else
    PS1='[\u@\h \w$(__git_ps1 " (%s)")]\$ '
  fi
fi

export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad

# Import various other $MYENV files

# Alias
if [ -f $HOME/.alias ]; then
    . $HOME/.alias
fi

# Secrets
if [ -f $HOME/.secrets ]; then
    . $HOME/.secrets
fi
