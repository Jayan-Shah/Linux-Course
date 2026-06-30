FROM ubuntu:22.04

# 1. Install Networking, Firewall, and Device management tools
RUN apt-get update && apt-get install -y \
    sudo \
    vim \
    nano \
    iptables \
    iproute2 \
    netcat \
    kmod \
    udev \
    iputils-ping \
    gcc \
    lsof \
    acl \
    && rm -rf /var/lib/apt/lists/*

COPY scripts/ /opt/sec_scripts/
RUN chmod +x /opt/sec_scripts/*

RUN cp /opt/sec_scripts/mission_controller.sh /usr/local/bin/mission && \
    chmod +x /usr/local/bin/mission

RUN cp /opt/sec_scripts/validate.sh /usr/local/bin/validate && \
    chmod +x /usr/local/bin/validate


WORKDIR /root
RUN echo "mission" >> /root/.bashrc