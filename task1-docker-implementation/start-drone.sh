#!/bin/bash
####################################
#
# start-drone
#
####################################




export DRONE_GITHUB_CLIENT_ID=4e8e6284eebb9a0a49a6
export DRONE_GITHUB_CLIENT_SECRET=$(cat ./.secrets/secrets.json | jq -r .DRONE_GITHUB_CLIENT_SECRET)
export DRONE_RPC_SECRET=$(cat ./.secrets/secrets.json | jq -r .DRONE_RPC_SECRET)
export DRONE_SERVER_HOST=droneio.gotdns.ch
export DRONE_SERVER_PROTO=http


sudo docker run \
  --volume=/var/lib/drone:/data \
  --env=DRONE_GITHUB_CLIENT_ID=$DRONE_GITHUB_CLIENT_ID \
  --env=DRONE_GITHUB_CLIENT_SECRET=$DRONE_GITHUB_CLIENT_SECRET \
  --env=DRONE_RPC_SECRET=$DRONE_RPC_SECRET \
  --env=DRONE_SERVER_HOST=$DRONE_SERVER_HOST \
  --env=DRONE_SERVER_PROTO=$DRONE_SERVER_PROTO \
  --publish=80:80 \
  --publish=443:443 \
  --restart=always \
  --detach=true \
  --name=drone \
  drone/drone:1


