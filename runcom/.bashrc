# Copied from https://github.com/webpro/dotfiles/blob/master/runcom/.bash_profile (for OSX, which defaults to log-in shells), modified for .bashrc
##################################


# If not running interactively, don't do anything

[ -z "$PS1" ] && return


# Source dotfiles for setting functions, alias, ...

for DOTFILE in "$DOTFILES_DIR"/system/.functions; do
#    for DOTFILE in "$DOTFILES_DIR"/system/.{functions, alias}; do
    [ -f "$DOTFILE" ] && . "$DOTFILE"
done


# Clean up

unset DOTFILE


# Export

export DOTFILES_DIR
