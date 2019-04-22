#!/bin/bash
# using venv kernel
pip install ipykernel;
pip install --upgrade ipykernel;
ipython kernel install --user --name=venv;
pip install -r dev_requirements.txt;

/Applications/Python 3.5/Install Certificates.command
