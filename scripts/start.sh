cd ..

docker run -it \
    -p 80:8000 \
    -e HUB_PATH=/home/admin \
    -e NOTEBOOKS_FROM=/notebooks \
    -v $PWD/notebooks:/home/admin \
    --name jpnb-docker \
    quick-jpnb-docker