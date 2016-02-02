## If miniconda is already installed, skip installation
conda list &> /dev/null
[ $? -eq 0 ] && return

BASE_URL="https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-"

# OS architecture (32 or 64 bit)
MY_ARCH="$(uname -m)"

if [ $MY_ARCH = "x86_64" ]; then
    MINICONDA_URL="${BASE_URL}${MY_ARCH}.sh"
else
    MINICONDA_URL="${BASE_URL}x86.sh"
fi
echo $MINICONDA_URL

CURR_DIR=$PWD


if [ -d ~/Downloads ]; then
    cd ~/Downloads
else
    mkdir ~/Downloads
    cd ~/Downloads
fi

wget $MINICONDA_URL
bash $MINICONDA_URL
