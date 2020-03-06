#!/bin/bash
####################################
#
# run.sh
#
####################################

../decrypt_secret.sh task2-docker-compose >/dev/null

sudo docker-compose up -d

rm -rf ./secrets