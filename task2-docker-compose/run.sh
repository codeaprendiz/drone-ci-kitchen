#!/bin/bash
####################################
#
# run.sh
#
####################################

./decrypt_secret.sh 2>/dev/null

sudo docker-compose up -d

rm -rf ./secrets