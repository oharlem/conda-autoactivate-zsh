# conda-autoactivate-zsh

Inspired by: [https://github.com/vallops99/Conda-autoactivate-env](https://github.com/vallops99/Conda-autoactivate-env/).


## What it does
Automatically activates conda environment when you `cd` into a directory.

## Requirements
- `environment.yml` file exists.
- First line of it contains the `name: YOUR-ENV-NAME` pair.
- (mini)conda activated in a standard way, i.e. via `conda init zsh`.
- This code is added after the `__conda_setup=...` etc statements in the `.zshrc` file.

## How to use it
Add contents of the `conda-autoactivate-zsh.sh` file to your `.zshrc` file as-is after the conda init code.
