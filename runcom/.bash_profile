# Copied from https://github.com/webpro/dotfiles/blob/master/runcom/.bash_profile (for OSX, whose X terminal defaults to a log in shell), modified for Ubuntu to to source .profile, which sources .bashrc
##################################


# If not running interactively, don't do anything

[ -z "$PS1" ] && return


# Resolve DOTFILES_DIR (assuming ~/.dotfiles on distros without readlink and/or $BASH_SOURCE/$0)

READLINK=$(which greadlink || which readlink)
CURRENT_SCRIPT=$BASH_SOURCE

if [[ -n $CURRENT_SCRIPT && -x "$READLINK" ]]; then
    SCRIPT_PATH=$($READLINK -f "$CURRENT_SCRIPT")
    DOTFILES_DIR=$(dirname "$(dirname "$SCRIPT_PATH")")
elif [ -d "$HOME/.dotfiles" ]; then
    DOTFILES_DIR="$HOME/.dotfiles"
else
    echo "Unable to find dotfiles, exiting."
    return # `exit 1` would quit the shell itself
fi


# Export
export DOTFILES_DIR


# source .profile (which sources .bashrc and adds user's private
# bin to path)
[[ -s $HOME/.profile ]] && source $HOME/.profile


# Source the dotfiles containing environment variables or other
# configuration settings (order matters)

for DOTFILE in "$DOTFILES_DIR"/system/.path; do
# for DOTFILE in "$DOTFILES_DIR"/system/.{path, file2, file3}; do    
    [ -f "$DOTFILE" ] && . "$DOTFILE"
done


# Clean up

unset DOTFILE
