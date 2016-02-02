## If miniconda is already installed, skip installation
conda list &> /dev/null
[ $? -eq 0 ] && return

BASE_URL="https://repo.continuum.io/miniconda/"

# OS architecture (32 or 64 bit)
MY_ARCH="$(uname -m)"

if [ $MY_ARCH = "x86_64" ]; then
    MINICONDA_SH="Miniconda3-latest-Linux-x86_64.sh"
else
    MINICONDA_SH="Miniconda3-latest-Linux-x86.sh"
fi

CURR_DIR=$PWD

if [ -d ~/Downloads ]; then
    cd ~/Downloads
else
    mkdir ~/Downloads
    cd ~/Downloads
fi

wget "${BASE_URL}${MINICONDA_SH}"
bash $MINICONDA_SH

cd $CURR_DIR
