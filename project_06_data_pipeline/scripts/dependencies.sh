#!/bin/bash
# using venv kernel
pip install ipykernel;
pip install --upgrade ipykernel;
ipython kernel install --user --name=venv;
# dependencies HERE
pip install -r requirements.txt;
