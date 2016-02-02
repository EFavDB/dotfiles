
APT_PATH="/etc/apt/sources.list.d"
SRC_LIST="official-source-repositories.list"

## Enable/define official source code repositories if distributor is LinuxMint
if [ -n "$(echo $(lsb_release -i) | grep "LinuxMint")" ]; then

    CODENAME_MINT="$(lsb_release -sc)"
    #echo $CODENAME_MINT #e.g. rosa

    CODENAME_UBUNTU="$(echo $(lsb_release -uc) | awk -F' ' '{print $2}')"
    #echo $CODENAME_UBUNTU #e.g. trusty

    ## if apt-get src list already exists, then back it up before overwriting
    if [ -s "$APT_PATH/$SRC_LIST" ]; then
	mv "$APT_PATH/$SRC_LIST" "$APT_PATH/$SRC_LIST.backup"
    fi
       
    cat <<EOF > "$APT_PATH/$SRC_LIST"
deb-src http://packages.linuxmint.com $CODENAME_MINT main upstream import

deb-src http://extra.linuxmint.com $CODENAME_MINT main

deb-src http://archive.ubuntu.com/ubuntu $CODENAME_UBUNTU main restricted universe multiverse
deb-src http://archive.ubuntu.com/ubuntu $CODENAME_UBUNTU-updates main restricted universe multiverse

deb-src http://security.ubuntu.com/ubuntu/ $CODENAME_UBUNTU-security main restricted universe multiv$
deb-src http://archive.canonical.com/ubuntu/ $CODENAME_UBUNTU partner
EOF

    ## to do: add repo for virtualbox to sources.list.d
fi


## install packages

apps=(
    tree
    imagemagick
    build-essential
)

sudo apt-get update
sudo apt-get install "${apps[@]}"

# emacs24.4
. "$DOTFILES_DIR/install/install-emacs.sh"

# miniconda
. "$DOTFILES_DIR/install/install-miniconda.sh"

# automake, texlive-full,

