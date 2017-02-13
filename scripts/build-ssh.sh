#!/bin/bash

docker run -d -p 22  --name tester-$@ -v ~/.ssh/id_rsa.pub:/home/ubuntu/.ssh/authorized_keys $@

CONTAINER_SSH_PORT=$(docker inspect --format='{{(index (index .NetworkSettings.Ports "22/tcp") 0).HostPort}}' tester-$@)
CONTAINER_SSH_HOST=127.0.0.1

echo "When container is ready do"
echo "ssh -o StrictHostKeyChecking=no -p $CONTAINER_SSH_PORT ubuntu@${CONTAINER_SSH_HOST}"
