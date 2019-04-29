#!/bin/bash
function dependencies(){
  echo Install dependencies
  # upgrade pip
  pip install --upgrade pip
  # using venv kernel
  pip install ipykernel;
  pip install --upgrade ipykernel;
  ipython kernel install --user --name=venv;
  # reinstall jupyter notebook
  pip install --upgrade --force-reinstall --no-cache-dir jupyter;
  # install requirements
  pip install -r configs/requirements.txt;

  # For SSL problems mostly with tensorflow
  # /Applications/Python 3.5/Install Certificates.command
}

function docker_build_jupyter(){
  echo Build Docker jupyter
  docker build -f dockerfiles/Dockerfile_jupyter . --tag jupyter_dev
}

function docker_freeze_dependencies(){
  echo Run freeze dependencies;
  docker exec -it jupyter_lab sh -c "scripts/pipeline.sh freeze_dependencies";
}

function docker_run_jupyter(){
  echo Run Docker jupyter;

  docker run \
    -p 8888:8888 \
    --rm \
    --name jupyter_lab \
    --mount type=bind,source="$(pwd)"/notebooks,target=/app/notebooks \
    --mount type=bind,source="$(pwd)"/data,target=/app/data \
    --mount type=bind,source="$(pwd)"/configs,target=/app/configs \
    jupyter_dev
}

function freeze_dependencies(){
  pip freeze > configs/requirements.txt;
}

function run_jupyter(){
  echo Run jupyter notebook;
  jupyter notebook;
  # ALternativelivy for no browser in virtual env
  # jupyter notebook --allow-root --ip 0.0.0.0 --no-browser;
}

function virtual_env(){
  echo Create virtual environment;
  # create a virtual env venv
  virtualenv venv;
  # TODO: Find out if you really need a specific python version
  # virtualenv --python=/usr/local/bin/python3.5 venv;
  source venv/bin/activate;
  # display which python version
  which python;
}

case $1 in
  docker_build_jupyter)
    docker_build_jupyter
    ;;
  docker_freeze_dependencies)
    docker_freeze_dependencies
    ;;
  docker_run_jupyter)
    docker_run_jupyter
    ;;
  dependencies)
    dependencies
    ;;
  freeze_dependencies)
    freeze_dependencies
    ;;
  *)
    echo Unknown command
  ;;
esac
