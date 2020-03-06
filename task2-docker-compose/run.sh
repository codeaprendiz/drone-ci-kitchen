#!/bin/bash
####################################
#
# run.sh
#
####################################

../decrypt_secret.sh tas2-docker-compose >/dev/null

sudo docker-compose up -d

rm -rf ./secrets