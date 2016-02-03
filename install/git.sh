## autoenv - automatically activate virtual environment when you
## cd into a directory containing a .env file (with activation instructions)
[ -d /opt/autoenv ] || git clone git://github.com/kennethreitz/autoenv.git /opt/autoenv


## emacs
[ -f ~/.emacs.d/init.el ] || git clone git://github.com/frangipane/emacs.git ~/.emacs.d
