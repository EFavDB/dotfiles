## .files 

These are my dotfiles, i.e. bash configurations and other
configurations, targeted for Ubuntu (I'm currently on Ubuntu 14.04
LTS).

The installation script automates the installation of 

## Warning

Please be careful and read through the repo (and the associated Emacs
repo cloned by `install-emacs.sh`) before cloning it and running the
installation script.  `install.sh` will replace your old dotfiles
without making backups.

Some packages are hefty downloads, like the `auctex` package installed
by `apt-get` that's needed for the LaTeX Emacs plugin.  If you don't
need it, comment it out before running the script (and the plugin in
the Emacs repo).

## Install

On a fresh installation of Ubuntu, first install git:
`sudo apt-get install git`

Then clone this repo with Git

`git clone https://github.com/frangipane/.dotfiles.git`

Then run installation script (script can be run from anywhere)

`source .dotfiles/install.sh`


## Resources

* []() -- step-by-step guide through this repo
* [Getting started with dotfiles](https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789#.7l2hnwca2) -- dotfiles how-to
* https://github.com/webpro/dotfiles -- inspiration for structuring dotfiles and automating installation


