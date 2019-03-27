#!/bin/bash
# using venv kernel
pip install ipykernel;
ipython kernel install --user --name=venv;
# dependencies HERE
pip install -r requirements.txt;
#cd ./detectors/dlib;
#./download.sh;
#cd ../../recognizers/vggface/;
#./download.sh;
#cd ../resnet/;
#./download.sh;
