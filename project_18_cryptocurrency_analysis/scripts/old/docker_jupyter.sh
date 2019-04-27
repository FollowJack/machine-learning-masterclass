#docker build -f dockerfiles/Dockerfile_jupyter . -t jupyter
docker run \
  -p 8888:8888 \
  --mount type=bind,source="$(pwd)"/notebooks,target=/app/notebooks \
  --mount type=bind,source="$(pwd)"/data,target=/app/data \
  jupyter
# docker run -p 8888:8888 -v `pwd`/notebooks:`pwd`/notebooks jupyter
# docker run -p 8888:8888 -v notebooks jupyter:latest
