FROM ubuntu:22.04
LABEL maintainer="Ambassador4ik"

ARG DEBIAN_FRONTEND=noninteractive

# Install: dependencies, clean: apt cache, remove dir: cache, man, doc, change mod time of cache dir.
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       software-properties-common \
       rsyslog systemd systemd-cron sudo \
    && apt-get clean \
    && rm -Rf /usr/share/doc && rm -Rf /usr/share/man \
    && rm -rf /var/lib/apt/lists/* \
    && touch -d "2 hours ago" /var/lib/apt/lists
RUN sed -i 's/^\($ModLoad imklog\)/#\1/' /etc/rsyslog.conf

RUN rm -f /lib/systemd/system/systemd*udev* \
  && rm -f /lib/systemd/system/getty.target

VOLUME ["/sys/fs/cgroup", "/tmp", "/run"]

#RUN useradd -p $(openssl passwd -1 admin) ambassador4ik

RUN sudo systemctl enable rescue.target --force
RUN systemctl set-default -f rescue.target
RUN ln -sf /usr/lib/systemd/system/rescue.target /etc/systemd/system/default.target
#RUN systemctl disable systemd-update-utmp-runlevel
#RUN systemctl disable systemd-update-utmp
#RUN systemctl disable chrony-wait.service
#RUN cd /etc/systemd/system
#RUN rm default.target
#RUN ln -s /usr/lib/systemd/system/multi-user.target default.target
#RUN apt-get update
#RUN sed 's/^GRUB_CMDLINE_LINUX_DEFAULT=.*/GRUB_CMDLINE_LINUX_DEFAULT="text"/' /etc/default/grub
#RUN update-grub

RUN apt-get update && apt-get upgrade -y
RUN apt-get install sudo wget -y
RUN apt install python3 python3-dev git curl -y
RUN wget https://tljh.jupyter.org/bootstrap.py

CMD /lib/systemd/systemd; python3 bootstrap.py --admin admin:admin
