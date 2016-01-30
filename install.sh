#!/usr/bin/env bash

##
## This script copied from https://github.com/webpro/dotfiles/blob/master/install.sh
####################################################

## Get current dir (so run this script from anywhere) 

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" # the full directory name of the script no matter where it is being called from


## Update dotfiles itself first

[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master


## Create symlinks for dotfiles in home directory

ln -sfv "$DOTFILES_DIR/runcom/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/runcom/.profile" ~
ln -sfv "$DOTFILES_DIR/runcom/.bashrc" ~


## Package managers and packages

. "$DOTFILES_DIR/install/apt-get.sh"
#. "$DOTFILES_DIR/install/conda.sh"
