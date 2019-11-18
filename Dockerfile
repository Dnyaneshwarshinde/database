FROM mysql:5.7

ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=mydatabase

COPY schema.sql /docker-entrypoint-initdb.d

EXPOSE 3306



#docker container build . -t mydb

#docker container run -d -p 3307:3306 --name mydb_c mydb

#mysql -u root -h localhost --port 3307 --protocol=tcp -p

#docker container rm < cont. id > --force
