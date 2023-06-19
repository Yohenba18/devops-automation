echo "Starting to deploy docker image.."
DOCKER_IMAGE=yohenba/user-service
docker pull $DOCKER_IMAGE
docker ps -q --filter ancestor=$DOCKER_IMAGE | xargs -r docker stop
docker run -d -p 8081:8081 $DOCKER_IMAGE
