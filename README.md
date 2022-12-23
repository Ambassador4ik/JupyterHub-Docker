# JupyterHub-Docker

This repository contains pre-set [Littlest JupyterHub](https://tljh.jupyter.org/en/latest/) docker image that can be used for instant JupyterHub deloyment at any VM that runs Ubuntu.

## Features

- Instant & simple deployment
- Jupyter Notebook import

## Quick Start

Install Git:
```sh
sudo apt-get update && apt-get install git -y
```
Clone repo:
```sh
git clone https://github.com/Ambassador4ik/JupyterHub-Docker.git
```
Go to scripts folder:
```sh
cd /JupyterHub-Docker/scripts
```
Finally, run quick setup script:
```sh
bash quick-start.sh
```

## Importing notebooks
To import notebooks, you can simply put them into `/JupyterHub-Docker/notebooks` folder. See Development section for info on custom location usage.

## Development
You can easily use JupyterHub-Docker with custom directories, ports and other.
#### Editing RUN script
To change run parameters, you can edit `start.sh` file.
Open the file using preferred text editor (e.g. vim or nano):
```sh
vim start.sh
```
You should see something like that:
```sh
cd ..

docker run -it \
-p 80:8000 \
-v $PWD/notebooks:/home/admin/notebooks \
--name jpnb-docker \
quick-jpnb-docker
```
To edit JupyterHub port, replace `80` with any other port number you need.
To edit notebooks import directory, replace `$PWD/notebooks` with your path.

#### Editing BUILD script
In build script you can change image name or add any needed flags.