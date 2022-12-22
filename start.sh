docker run -it \
    -p 80:8000 \
    -e HUB_PATH=/home/admin \
    -e NOTEBOOKS_FROM=/notebooks \
    -v $PWD/notebooks:/home/admin \
    fffbd58b2877504d06bb971832fef31d80ed7645022082496c895447d93ea5f9