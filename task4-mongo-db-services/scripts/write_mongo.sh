#!/bin/sh
set -ex
echo "start writing"
mongo mongo:27017/mydb task4-mongo-db-services/scripts/write.js
echo "done writing"
