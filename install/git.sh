## autoenv - automatically activate virtual environment when you
## cd into a directory containing a .env file (with activation instructions)
[ -d /opt/autoenv ] || sudo git clone git://github.com/kennethreitz/autoenv.git /opt/autoenv


## emacs
[ -f ~/.emacs.d/init.el ] || git clone git://github.com/frangipane/emacs.git ~/.emacs.d

EMACS_DIR="$HOME/.emacs.d"

## update Emacs configs
[ -d "$EMACS_DIR/.git" ] && git --work-tree="$EMACS_DIR" --git-dir="$EMACS_DIR/.git" pull origin master
