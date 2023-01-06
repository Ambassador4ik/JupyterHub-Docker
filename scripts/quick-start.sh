sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install docker.io docker -y

echo Building docker image...
sudo bash build.sh

echo Starting docker image...
sudo bash run.sh
