# Copied from https://github.com/webpro/dotfiles/blob/master/runcom/.bash_profile (for OSX, whose X terminal defaults to a log in shell), modified for Ubuntu to to source .profile, which sources .bashrc
##################################


# If not running interactively, don't do anything

[ -z "$PS1" ] && return

# source .profile and .bashrc
[[ -s $HOME/.profile ]] && . $HOME/.profile
[[ -f $HOME/.bashrc ]] && . $HOME/.bashrc
