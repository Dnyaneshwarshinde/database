#!/bin/bash

if [$(sudo docker container ls -q --filter name=mydb_c)!='']; then

    sudo docker container stop mydb_c
    sudo docker container rm mydb_c
fi

if [$(sudo docker image ls -q --filter reference=mydb)!='']; then

    sudo docker image rm mydb
fi

sudo docker build . -t mydb

sudo docker container run -d -p 3307:3306 --name mydb_c mydb

#mysql -u root -h localhost --port=3307 --protocol=tcp -p