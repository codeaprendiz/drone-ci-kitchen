#!/bin/bash
####################################
#
# start-runner
#
####################################





sudo docker run -d \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -e DRONE_RPC_PROTO=$DRONE_RPC_PROTO \
  -e DRONE_RPC_HOST=$DRONE_RPC_HOST \
  -e DRONE_RPC_SECRET=$DRONE_RPC_SECRET \
  -e DRONE_RUNNER_CAPACITY=2 \
  -e DRONE_RUNNER_NAME=${HOSTNAME} \
  -p 3000:3000 \
  --restart always \
  --name runner \
  drone/drone-runner-docker:1