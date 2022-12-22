sudo docker run -it --privileged --tmpfs /tmp --tmpfs /run --tmpfs /run/lock -v /sys/fs/cgroup:/sys/fs/cgroup:ro eda0cb5ae4b0abb6daa178a2065d6c255a1bc6b8a1aa9596a32e31ad3447d5aa
sudo docker run -it --privileged --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro eda0cb5ae4b0abb6daa178a2065d6c255a1bc6b8a1aa9596a32e31ad3447d5aa

docker run -it --privileged --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro eniocarboni/docker-ubuntu-systemd:latest

docker run -it \
    --privileged \
    --cgroup-parent=docker.slice \
    --cgroupns private \
    --tmpfs /tmp \
    --tmpfs /run \
    --tmpfs /run/lock \
    jrei/systemd-ubuntu:22.04


docker run -it --cgroupns=host --tmpfs /tmp --tmpfs /run --tmpfs /run/lock \
    -v /sys/fs/cgroup:/sys/fs/cgroup 510c20c3dcb18602a4947381d741092507b7a53b7979883bc98e12427e08c1dc

