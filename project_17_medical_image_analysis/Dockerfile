
FROM python:3.5.0

# make directories suited to your application
RUN mkdir -p app

WORKDIR /app

# copy contents from your local to your docker container
COPY ./requirements.txt .
COPY ./scripts scripts
COPY ./src src
COPY ./models models
COPY ./data/TRAIN/openI_abd_xray/openI_2.png data/TRAIN/openI_abd_xray/openI_2.png

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN python ./src/model.py
