MYENV="$HOME/config"

# Create symlinks if necessary
if [ ! -h $HOME/.bash_profile ] && [ -f $MYENV/profile ]; then
    ln -s $MYENV/profile $HOME/.bash_profile
fi

if [ ! -h $HOME/.alias ] && [ -f $MYENV/alias ]; then
    ln -s $MYENV/alias $HOME/.alias
fi

if [ ! -h $HOME/.secrets ] && [ -f $MYENV/secrets ]; then
    ln -s $MYENV/secrets $HOME/.secrets
fi

if [ ! -h $HOME/.vimrc ] && [ -f $HOME/.vimrc ]; then
    mv $HOME/.vimrc $HOME/.vimrc.ori
fi

if [ ! -h $HOME/.vimrc ]; then
    ln -s $MYENV/vimrc $HOME/.vimrc
fi

if [ ! -h $HOME/.gitconfig ] && [ -f $HOME/.gitconfig ]; then
    mv $HOME/.gitconfig $HOME/.gitconfig.ori
fi

if [ ! -h $HOME/.gitconfig ]; then
    ln -s $MYENV/gitconfig $HOME/.gitconfig
fi
