packages=(
    matplotlib
    ggplot
    numpy
    pandas
    scipy
    scikit-learn
    jupyter
    ipython
    ipython-notebook
    statsmodels
    beautifulsoup4
    jedi   # for emacs
    flake8 # for emacs
    PIL # needed for some scipy modules
)

for item in ${packages[*]}; do
    echo "================================================="
    echo "installing ${item}"
    conda install --yes ${item}
done

# install from r channel
conda install --yes -c r r-essentials
echo "================================================="
echo "installing r-essentials"
