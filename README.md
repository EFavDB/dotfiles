## .files 

These are dotfiles, i.e. configurations of shell and other programs,
to set up a basic data science working environment.  The setup and
workflow is covered in detail in
[this blog post](http://efavdb.com/dotfiles).

Tested on Linux Mint 17.3 Cinnamon 64-bit and Ubuntu 14.04 (Trusty
Tahr) 32-bit.

## Warning

Please be careful and read through the repo (and the associated Emacs
repo cloned by `install/install-emacs.sh`) before cloning it and running the
installation script.  `install.sh` will replace your old dotfiles
without making backups.

Some packages are hefty downloads, like the `auctex` package installed
by `apt-get` that's needed for the LaTeX Emacs plugin.  If you don't
need it, comment it out before running the script (and the plugin in
the Emacs repo).

## Packages

`install.sh` loads the scripts in the `install` directory to install
packages.

`apt-get.sh`
- tree - visualize directories as trees
- imagemagick - bitmap image editor
- build-essential - for building Debian packages
- pandoc - markup language parser/converter
- automake - tool for generating Makefile.in files (required by
  auctex, Emacs plugin)
- texlive-full - LaTeX (required by auctex, Emacs plugin)

`conda.sh`
- python numeric/scientific computing/plotting libraries: matplotlib,
  ggplot, numpy, pandas, scipy, scikit-learn, jupyter, ipython,
  ipython-notebook, statsmodels
- python webscraping - beautifulsoup4
- r language and libarires - r, r-essentials
- jedi - autocompletion and static analysis library for python (required by elpy,
  Emacs plugin)
- flake8 - python PEP8 style and error checker (required by elpy, Emacs plugin)

`git.sh`
- autoenv - directory-based environments
- Emacs configuration files - cloned from my
  [Emacs repo](https://github.com/frangipane/emacs)

`install-emacs.sh`
- install emacs 24.4 (if not available in system repo, then build from source)

`install-miniconda.sh`
- install miniconda3


## Install

On a fresh installation of Ubuntu, first install git:
`sudo apt-get install git`

Then clone this repo with Git

`git clone https://github.com/efavdb/dotfiles.git`

Then run the installation script:

`source dotfiles/install.sh`


## Tips

- Type `conda list` in your shell to check if the miniconda path has
  been prepended to the PATH variable.  If the command is not
  recognized, try logging out and back into your system in order for
  the changes to .profile to take effect.
- Type `conda list` to check that all the packages were successfully
  installed by `conda.sh`.  If they weren't (e.g. due to a failed
  internet connection), you can run `install.sh` again.  Note, the
  list output by `conda list` should look a lot longer than that in
  `conda.sh` because of automatically installed dependencies.


## Resources

* [Dotfiles for peace of mind](http://efavdb.com/dotfiles) -- step-by-step guide through this repo
* [Getting started with dotfiles](https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789#.7l2hnwca2) -- dotfiles how-to
* https://github.com/webpro/dotfiles -- inspiration for structuring dotfiles and automating installation
* [My Python Environment Workflow with Conda](http://stiglerdiet.com/blog/2015/Nov/24/my-python-environment-workflow-with-conda/)
  -- Tim Hopper's workflow, implemented in this repo
* [Emacs repo cloned by this setup](https://github.com/frangipane/emacs)
