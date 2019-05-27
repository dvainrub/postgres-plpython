FROM postgres:11

RUN apt-get update && apt-get install -y postgresql-plpython-11

RUN echo 'CREATE EXTENSION plpythonu;' > /docker-entrypoint-initdb.d/plpythonu.sql

