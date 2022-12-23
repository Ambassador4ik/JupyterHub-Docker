sudo apt-get update && apt-get upgrade -y
sudo apt-get install docker.io docker -y

echo Building docker image...
bash build.sh

echo Starting docker image...
bash start.sh
