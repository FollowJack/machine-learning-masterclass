#!/bin/bash
# using venv kernel
pip install ipykernel;
ipython kernel install --user --name=venv;
# dependencies HERE
pip install sqlalchemy;
pip install psycopg2;
pip install numpy;
pip install panda;
pip install pymysql;
