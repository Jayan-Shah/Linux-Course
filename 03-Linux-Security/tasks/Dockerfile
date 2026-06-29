FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

####################################################
# Install Packages
####################################################

RUN apt-get update && apt-get install -y \
    bash \
    sudo \
    coreutils \
    findutils \
    grep \
    sed \
    gawk \
    less \
    nano \
    vim \
    tree \
    procps \
    file \
    acl \
    passwd \
    iproute2 \
    iputils-ping \
    net-tools \
    curl \
    wget \
    dnsutils \
    traceroute \
    openssh-client \
    openssh-server \
    rsync \
    tar \
    gzip \
    unzip \
    zip \
    systemd \
    systemd-sysv \
    rsyslog \
    cron \
    ca-certificates \
    lsof \
    psmisc \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

####################################################
# Student User
####################################################

RUN useradd -ms /bin/bash student

####################################################
# Passwordless sudo
####################################################

RUN echo "student ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

####################################################
# Lab Engine
####################################################

COPY lab /opt/linux-handbook/lab

COPY missions /opt/linux-handbook/missions

RUN chmod +x /opt/linux-handbook/lab/*.sh

RUN find /opt/linux-handbook/missions \
-name "*.sh" \
-exec chmod +x {} \;

####################################################
# Lab Directory
####################################################

RUN mkdir -p /home/student/lab

RUN chown -R student:student /home/student

####################################################
# Lab Command
####################################################

COPY lab/lab /usr/local/bin/lab

RUN chmod +x /usr/local/bin/lab

####################################################
# Switch to Student
####################################################

USER student

WORKDIR /home/student/lab

CMD ["tail", "-f", "/dev/null"]