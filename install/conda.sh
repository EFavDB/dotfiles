packages=(
    matplotlib
    numpy
    pandas
    scipy
    scikit-learn
    ipython
    ipython-notebook
    jedi   # for emacs
    flake8 # for emacs
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
