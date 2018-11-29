# flake8-mypy-bug
Illustrate a bug while running mypy over flake8

## How to run / interpret

To run it I use `execute_mypy.sh` it assume that you have `pyenv` installed with `python 3.6.5`

The script collect the output of running `mypy` standalone and then through `flake8-mypy`.

There is obviously a big difference as `flake8-mypy` doesn't detect anything.

[mypy output](output/mypy.output)
[flake8 output](output/flake8.output)



Issue reported here : https://github.com/ambv/flake8-mypy/issues/23
