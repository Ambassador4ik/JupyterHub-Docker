cd ..

docker run -it \
    -p 80:8000 \
    -v $PWD/notebooks:/home/admin/notebooks \
    --name jpnb-docker \
    quick-jpnb-docker
