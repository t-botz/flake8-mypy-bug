#!/usr/bin/env sh

# Create and activate the venv
# $(pyenv root)/versions/3.6.5/bin/virtualenv --python="$(pyenv root)/versions/3.6.5/bin/python" ~/.virtualenvs/flake8-bug
# . ~/.virtualenvs/flake8-bug/bin/activate


pip install -r requirements.txt

{
    echo "Python:"
    python -V
    echo
    echo "Pip:"
    pip list
    echo
    echo "Flake8:"
    flake8 --version
 } > output/versions

python -m mypy   --config-file="$(pwd)/mypy.ini" simpleExample.py > output/mypy.output
python -m flake8 --mypy-config="$(pwd)/mypy.ini" simpleExample.py > output/flake8.output
