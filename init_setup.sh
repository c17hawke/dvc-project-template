echo [$(date)]: "START"
export _VERSION_=3.7
echo [$(date)]: "creating environment with python ${_VERSION_}"
conda create --prefix ./env python=${_VERSION_} -y
echo [$(date)]: "activate environment"
source activate ./env
echo [$(date)]: "install requirements"
pip install -r requirements.txt
echo [$(date)]: "git init"
git init
echo [$(date)]: "dvc init"
dvc init
echo [$(date)]: "first commit"
git add .
git commit -m "first commit"
echo [$(date)]: "END"

# to remove everything -
# rm -rf env/ .gitignore conda.yaml README.md .git/