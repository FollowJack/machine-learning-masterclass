#!/bin/bash
# using venv kernel
pip install ipykernel;
ipython kernel install --user --name=venv;
# dependencies HERE
pip install tweepy;
pip install textblob;
pip install flask;
