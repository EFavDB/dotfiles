# check emacs version in ubuntu repo.  If version 24.4 is not available,
# download source and compile.

EMACS_URL="http://ftp.gnu.org/gnu/emacs/emacs-24.4.tar.gz"
CURR_DIR=$PWD

if [ -z "$(apt-cache policy emacs24 | grep "Candidate" | grep "24.4")" ]; then
    echo "emacs 24.4 is not available in ubuntu repo."
    echo "download and build from source."

    # install required dependencies
    sudo apt-get build-dep emacs24

    cd ~/Downloads
    wget $EMACS_URL && tar -xf emacs-24.4.tar.xz && cd emacs-24.4

    ./configure && make && sudo make install

    rm emacs-24.4.tar.xz
    cd $PWD
else
    echo "emacs 24.4 is available in ubuntu repo...\n installing with apt-get."
    sudo apt-get install emacs24
fi
