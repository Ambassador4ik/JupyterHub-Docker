FROM jupyterhub/jupyterhub

RUN apt-get update && apt-get upgrade -y
RUN apt-get install python3.11 gcc python3-dev sudo -y

COPY requirements.txt requirements.txt
RUN python3 -m pip install -r requirements.txt && rm requirements.txt

RUN useradd -m -d /home/admin -s /bin/bash -p $(openssl passwd -1 admin) admin
