#!/bin/bash
pip install --upgrade pip
# using venv kernel
pip install ipykernel;
pip install --upgrade ipykernel;
ipython kernel install --user --name=venv;
pip install --upgrade --force-reinstall --no-cache-dir jupyter;
pip install -r dev_requirements.txt;

# /Applications/Python 3.5/Install Certificates.command
