FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

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
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash student

COPY lab /opt/linux-handbook/lab
COPY missions /opt/linux-handbook/missions

RUN chmod +x /opt/linux-handbook/lab/*.sh
RUN find /opt/linux-handbook/missions -name "*.sh" -exec chmod +x {} \;

RUN mkdir -p /home/student/lab
RUN chown -R student:student /home/student

COPY lab/lab /usr/local/bin/lab
RUN chmod +x /usr/local/bin/lab

WORKDIR /home/student

USER student

CMD ["/bin/bash"]