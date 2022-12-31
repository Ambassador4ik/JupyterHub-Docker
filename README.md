# JupyterHub-Docker

This repository contains pre-set [Littlest JupyterHub](https://tljh.jupyter.org/en/latest/) docker image that can be used for instant JupyterHub deloyment at any VM that runs Ubuntu.

## Features

- Instant & simple deployment
- Jupyter Notebook import

## Test server


## Preparation
Install Git:
```sh
sudo apt-get update && sudo apt-get install git -y
```
Clone repo:
```sh
git clone https://github.com/Ambassador4ik/JupyterHub-Docker.git
```

## Quick Start (Ubuntu only)
Make sure that you are running Ubuntu 18.04 or higher. Quick start shell script only works on ubuntu.

Go to scripts folder:
```sh
cd JupyterHub-Docker/scripts
```
Finally, run quick setup script:
```sh
sudo bash quick-start.sh
```



## Manual Install (Any system)
Make sure that you have installed docker. If not, go [here](https://docs.docker.com/get-docker/) and follow suggested steps for your system.
Now that you have docker installed, you need to build the image.
To do this, `cd` to `/JupyterHub-Docker` folder and run the following command:
```sh
docker build -t quick-jpnb-docker .
```
You can replace `quick-jpnb-docker` with any other name you'd like.
To run built image, execute the following command:
```sh
docker run -it \
-p 80:8000 \
-v $PWD/notebooks:/home/admin/notebooks \
--name jpnb-docker \
quick-jpnb-docker
```
To edit JupyterHub port, replace `80` with any other port number you need.
To edit notebooks import directory, replace `$PWD/notebooks` with your path.
Also, make sure to replace `quick-jpnb-docker` with the name you created whem building image.

## Importing notebooks
To import notebooks, you can simply put them into `/JupyterHub-Docker/notebooks` folder.
See Manual Install section for info on custom location usage.

## Remarks
The first thing I tried was creating an image from pure Ubuntu, which was not a huge success. You can see the results in `/legacy` folder. It kind of works, but only in single-user mode (`resque-target` on boot), which is not a good thing at all.
