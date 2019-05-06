#!/bin/bash

########################################
# Configs
########################################
DEV_DOCKER_CONTAINER_NAME="jupyter_dev"
DEV_DOCKER_IMAGE_NAME="jupyter_lab"

########################################
# Pyton
########################################
function dependencies(){
  echo Install dependencies
  # upgrade pip for removing error message of outdated pip
  pip install --upgrade pip

  # using venv kernel
  # pip install ipykernel;
  # pip install --upgrade ipykernel;
  # ipython kernel install --user --name=venv;
  # reinstall jupyter notebook
  # pip install --upgrade --force-reinstall --no-cache-dir jupyter;

  # install requirements
  pip install -r configs/requirements.txt;

  # For SSL problems mostly with tensorflow
  # /Applications/Python 3.5/Install Certificates.command
}

function freeze_dependencies(){
  pip freeze > configs/requirements.txt;
}

function run_jupyter_lab(){
  echo Run jupyter notebook;
  jupyter lab;
  # ALternativelivy for no browser in virtual env
  # jupyter notebook --allow-root --ip 0.0.0.0 --no-browser;
}

function run_django(){
  cd ./app;
  echo run migrations;
  # python manage.py makemigrations;
  # until python manage.py migrate; do
  #   sleep 2;
  #   echo "Retry migration!";
  # done;
  # python manage.py shell < init_admin.py;
  # python manage.py makemigrations app
  # python manage.py migrate app
  echo "Django is ready. Running on port 8000";
  # python main.py;
  python manage.py runserver 0.0.0.0:8000;
  # python manage.py startapp polls
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

########################################
# Docker
########################################
function docker_build_jupyter(){
  echo Build Docker jupyter
  docker build -f dockerfiles/Dockerfile_jupyter . --tag ${DEV_DOCKER_CONTAINER_NAME}
}

function docker_freeze_dependencies(){
  echo Run freeze dependencies;
  docker exec -it ${DEV_DOCKER_IMAGE_NAME} sh -c "scripts/pipeline.sh freeze_dependencies";
}

function docker_run_jupyter(){
  echo Run Docker jupyter;
  echo ${DEV_DOCKER_IMAGE_NAME}
  docker run \
    -p 8888:8888 \
    --rm \
    --name ${DEV_DOCKER_IMAGE_NAME} \
    --mount type=bind,source="$(pwd)"/notebooks,target=/app/notebooks \
    --mount type=bind,source="$(pwd)"/data,target=/app/data \
    --mount type=bind,source="$(pwd)"/configs,target=/app/configs \
    --mount type=bind,source="$(pwd)"/model,target=/app/model \
    ${DEV_DOCKER_CONTAINER_NAME};
}

function docker_run_django_app(){
  echo Run docker django app;
  docker-compose --file dockerfiles/docker-compose.yml up --build;
  # docker-compose --file dockerfiles/docker-compose.yml --verbose up; #
}

function docker_run_terminal(){
  echo Run Docker terminal;
  docker exec -it dockerfiles_app_1 /bin/bash
}



########################################
# Set methods public
########################################
case $1 in
  docker_run_django_app)
    docker_run_django_app
    ;;
  docker_freeze_dependencies)
    docker_freeze_dependencies
    ;;
  docker_run_jupyter)
    docker_run_jupyter
    ;;
  docker_run_terminal)
    docker_run_terminal
    ;;
  dependencies)
    dependencies
    ;;
  freeze_dependencies)
    freeze_dependencies
    ;;
  run_django)
    run_django
    ;;
  virtual_env)
    virtual_env
    ;;
  *)
    echo Unknown command
  ;;
esac
