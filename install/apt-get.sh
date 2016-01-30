
APT_PATH="/etc/apt/sources.list.d"
SRC_LIST="official-source-repositories.list"

# Enable source code repositories
# if distributor is LinuxMint and source repo doesn't exist (or is empty)
if [ -n "$(echo $(lsb_release -i) | grep "LinuxMint")" ] && [ ! -s "$APT_PATH/$SRC_LIST" ]; then

    CODENAME_MINT="$(lsb_release -sc)"
    echo $CODENAME_MINT

    CODENAME_UBUNTU="$(echo $(lsb_release -uc) | awk -F' ' '{print $2}')"
    echo $CODENAME_UBUNTU

    cat <<EOF >> "$APT_PATH/$SRC_LIST"
deb-src http://packages.linuxmint.com $CODENAME_MINT main upstream import

deb-src http://extra.linuxmint.com $CODENAME_MINT main

deb-src http://archive.ubuntu.com/ubuntu $CODENAME_UBUNTU main restricted universe multiverse
deb-src http://archive.ubuntu.com/ubuntu $CODENAME_UBUNTU-updates main restricted universe multiverse

deb-src http://security.ubuntu.com/ubuntu/ $CODENAME_UBUNTU-security main restricted universe multiv$
deb-src http://archive.canonical.com/ubuntu/ $CODENAME_UBUNTU partner
EOF
fi


# install packages

apps=(
    tree
    imagemagick
)

sudo apt-get update
sudo apt-get install "${apps[@]}"

# miniconda

# build-essential, emacs24.4

# automake, texlive-full,

