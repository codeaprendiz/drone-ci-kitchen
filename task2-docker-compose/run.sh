#!/bin/bash
####################################
#
# run.sh
#
####################################

../decrypt_secret.sh task2-docker-compose

cp -rfp docker-compose-model.yml docker-compose.yml

systemOS=$(uname)
if [ $systemOS = "Darwin" ]; then
  sed -i '' "s/SUBSTITUTE_DRONE_RPC_SECRET/$(cat ./.secrets/secrets.json | jq -r .DRONE_RPC_SECRET)/g" docker-compose.yml
  sed -i '' "s/SUBSTITUTE_DRONE_GITHUB_CLIENT_SECRET/$(cat ./.secrets/secrets.json | jq -r .DRONE_GITHUB_CLIENT_SECRET)/g" docker-compose.yml
fi

if [ $systemOS = "Linux" ]; then
  sed -i "s/SUBSTITUTE_DRONE_RPC_SECRET/$(cat ./.secrets/secrets.json | jq -r .DRONE_RPC_SECRET)/g" docker-compose.yml
  sed -i "s/SUBSTITUTE_DRONE_GITHUB_CLIENT_SECRET/$(cat ./.secrets/secrets.json | jq -r .DRONE_GITHUB_CLIENT_SECRET)/g" docker-compose.yml
fi


sudo docker-compose up -d

rm -rf docker-compose.yml
rm -rf ./secrets