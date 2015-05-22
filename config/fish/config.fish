# set editors
set -xg VISUAL vim
set -xg EDITOR $VISUAL
set -xg BUNDLER_EDITOR subl

# load thoughtbot/dotfiles scripts
set PATH $HOME/.bin $PATH

# mkdir .git/safe in the root of repositories you trust
# set PATH .git/safe/../../bin $PATH

# rbenv
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

# recommended by brew doctor:
set PATH /usr/local/bin /usr/local/sbin $PATH

# NVM (node version manager)
set -x NVM_DIR ~/.nvm
source ~/.config/fish/nvm-wrapper/nvm.fish

# npm
set PATH /usr/local/share/npm/bin $PATH

# Go
set -xg GOPATH $HOME/code/Go
set PATH $GOPATH/bin $PATH

# Load aliases
source ~/.aliases