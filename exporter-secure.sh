#!/bin/bash
DB=$1
DB_COLLECTIONS=$(mongo $DB --quiet --eval "db.getCollectionNames().join(' ')" --host 127.0.0.1:27017 -u the_username -p the_password -a uthenticationDatabase=admin)
for collection in $DB_COLLECTIONS; do
    echo "Exporting $DB/$collection ..."
    mongoexport --db=$DB --collection=$collection --out=$collection.json --host 127.0.0.1:27017 -u the_username -p the_password -a uthenticationDatabase=admin
done