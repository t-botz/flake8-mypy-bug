#!/usr/bin/env sh

# Create the venv
# $(pyenv root)/versions/3.6.5/bin/virtualenv --python="$(pyenv root)/versions/3.6.5/bin/python" ~/.virtualenvs/flake8-bug
source ~/.virtualenvs/flake8-bug/bin/activate
pip install -r requirements.txt

echo "Python:"     > output/versions
python -V         >> output/versions
echo              >> output/versions
echo "Pip:"       >> output/versions
pip list          >> output/versions
echo              >> output/versions
echo "Flake8:"    >> output/versions
flake8 --version  >> output/versions

python -m mypy   --config-file="$(pwd)/mypy.ini" simpleExample.py > output/mypy.output
python -m flake8 --mypy-config="$(pwd)/mypy.ini" simpleExample.py > output/flake8.output