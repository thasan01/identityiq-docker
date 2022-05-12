#Download base image mysql
FROM mysql:5.7

COPY ssb/build/extract/WEB-INF/database /tmp/iiq-db-scripts

RUN dbfile=$(ls /tmp/iiq-db-scripts | grep create.*mysql) && cp /tmp/iiq-db-scripts/$dbfile /docker-entrypoint-initdb.d/create.sql

EXPOSE 3306