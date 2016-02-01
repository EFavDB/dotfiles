# check emacs version in ubuntu repo.  If version 24.4 is not available,
# download source and compile.

EMACS_URL="http://ftp.gnu.org/gnu/emacs/emacs-24.4.tar.gz"
CURR_DIR=$PWD

if [ -z "$(apt-cache policy emacs24 | grep "Candidate" | grep "24.4")" ]; then
    echo "emacs 24.4 is not available in ubuntu repo."
    echo "download and build from source."

    sudo apt-get build-dep emacs24
    
    # install required dependencies
    if [ $? -eq 0]; then
	echo "*****emacs24 dependencies built!*****"

	wget $EMACS_URL && tar -xf emacs-24.4.tar.* && cd emacs-24.4
	./configure && make && sudo make install
	rm emacs-24.4.tar.xz

	echo "*****installed emacs24.4*****"
	cd $PWD
    fi
else
    echo "emacs 24.4 is available in ubuntu repo...\n installing with apt-get."
    sudo apt-get install emacs24
fi
