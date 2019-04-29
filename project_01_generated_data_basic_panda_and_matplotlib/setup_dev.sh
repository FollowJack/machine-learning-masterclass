#!/bin/bash
./scripts/pipeline.sh docker_build_jupyter

# For copying files from docker to host
# docker cp jupyter_dev:requirements.txt ./requirements.txt
