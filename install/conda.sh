packages=(
    matplotlib
    numpy
    pandas
    scipy
    scikit-learn
)

for item in ${packages[*]}; do
    echo "================================================="
    echo "installing ${item}"
    conda install --yes ${item}
done
