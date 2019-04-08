#!/bin/bash
# using venv kernel
pip install ipykernel;
ipython kernel install --user --name=venv;
pip install -r requirements.txt;
