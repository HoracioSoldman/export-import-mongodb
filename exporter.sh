#!/bin/bash
DB=$1
DB_COLLECTIONS=$(mongo $DB --quiet --eval "db.getCollectionNames().join(' ')")
for collection in $DB_COLLECTIONS; do
    echo "Exporting $DB/$collection ..."
    mongoexport --db=$DB --collection=$collection --out=$collection.json
done