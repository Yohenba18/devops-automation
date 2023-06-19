echo "Starting to deploy docker image.."
DOCKER_IMAGE=yohenba/user-service
sudo docker pull $DOCKER_IMAGE
sudo docker ps -q --filter ancestor=$DOCKER_IMAGE | xargs -r docker stop
sudo docker run -d -p 8081:8081 $DOCKER_IMAGE
