#!/bin/bash
####################################
#
# run.sh
#
####################################

./decrypt_secret.sh 2>/dev/null

./start-drone.sh

./start-runner.sh

rm -rf ./secrets