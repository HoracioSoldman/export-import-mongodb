#!/bin/bash
DB=$1
for FILE in *.json; do
    c= basename $FILE .json;
    mongoimport --db=$DB --collection=$c --drop --file=$FILE --host 127.0.0.1:27017 -u the_username -p the_password --authenticationDatabase=admin
done
