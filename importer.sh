#!/bin/bash
DB=$1
for FILE in *.json; do
    c= basename $FILE .json;
    mongoimport --db=$DB --collection=$c --drop --file=$FILE 
done