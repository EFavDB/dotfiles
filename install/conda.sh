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
