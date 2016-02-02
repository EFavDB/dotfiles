# Copied from https://github.com/webpro/dotfiles/blob/master/runcom/.bash_profile (for OSX, whose X terminal defaults to a log in shell), modified for Ubuntu to to source .profile, which sources .bashrc
##################################


# If not running interactively, don't do anything

[ -z "$PS1" ] && return


# source .profile (which sources .bashrc and adds user's private
# bin to path)
[[ -s $HOME/.profile ]] && source $HOME/.profile


# Source the dotfiles containing environment variables or other
# configuration settings (order matters)

for DOTFILE in "$DOTFILES_DIR"/system/.{path}; do
    [ -f "$DOTFILE" ] && . "$DOTFILE"
done


# Clean up

unset DOTFILE


# Export

export DOTFILES_DIR
