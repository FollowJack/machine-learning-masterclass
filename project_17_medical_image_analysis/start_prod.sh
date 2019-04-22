#!/bin/bash
./scripts/freeze_dependencies.sh;

docker build -t model_image .
