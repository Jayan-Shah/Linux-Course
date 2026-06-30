FROM ubuntu:22.04

# 1. Install all required tools for Missions 1-6



RUN apt-get update && apt-get install -y \
    acl \
    sudo \
    vim \
    nano \
    rsyslog \
    iptables \
    iproute2 \
    netcat \
    openssh-server \
    e2fsprogs \
    && rm -rf /var/lib/apt/lists/*

# 2. Copy the entire scripts directory into a hidden system folder
COPY scripts/ /opt/sec_scripts/
RUN chmod +x /opt/sec_scripts/*.sh

# 3. Setup the global 'mission' command (Master Controller)
RUN cp /opt/sec_scripts/mission_controller.sh /usr/local/bin/mission && \
    chmod +x /usr/local/bin/mission

# 4. The Unified Obfuscation Engine (Creates the 'validate' tool for Missions 1-7)
RUN echo '#!/bin/bash' > /usr/local/bin/validate && \
    echo 'if [ "$1" == "1" ]; then' >> /usr/local/bin/validate && \
    echo "  echo '$(base64 -w 0 /opt/sec_scripts/validate_m1.sh)' | base64 --decode | bash" >> /usr/local/bin/validate && \
    echo 'elif [ "$1" == "2" ]; then' >> /usr/local/bin/validate && \
    echo "  echo '$(base64 -w 0 /opt/sec_scripts/validate_m2.sh)' | base64 --decode | bash" >> /usr/local/bin/validate && \
    echo 'elif [ "$1" == "3" ]; then' >> /usr/local/bin/validate && \
    echo "  echo '$(base64 -w 0 /opt/sec_scripts/validate_m3.sh)' | base64 --decode | bash" >> /usr/local/bin/validate && \
    echo 'elif [ "$1" == "4" ]; then' >> /usr/local/bin/validate && \
    echo "  echo '$(base64 -w 0 /opt/sec_scripts/validate_m4.sh)' | base64 --decode | bash" >> /usr/local/bin/validate && \
    echo 'elif [ "$1" == "5" ]; then' >> /usr/local/bin/validate && \
    echo "  echo '$(base64 -w 0 /opt/sec_scripts/validate_m5.sh)' | base64 --decode | bash" >> /usr/local/bin/validate && \
    echo 'elif [ "$1" == "6" ]; then' >> /usr/local/bin/validate && \
    echo "  echo '$(base64 -w 0 /opt/sec_scripts/validate_m6.sh)' | base64 --decode | bash" >> /usr/local/bin/validate && \
    echo 'elif [ "$1" == "7" ]; then' >> /usr/local/bin/validate && \
    echo "  echo '$(base64 -w 0 /opt/sec_scripts/validate_m7.sh)' | base64 --decode | bash" >> /usr/local/bin/validate && \
    echo 'else echo "Usage: validate [1|2|3|4|5|6|7]"; fi' >> /usr/local/bin/validate && \
    chmod +x /usr/local/bin/validate

# 5. Destroy the readable source code so students cannot cheat
RUN rm /opt/sec_scripts/validate_m*.sh

# 6. Drop the student directly into the root folder upon login
WORKDIR /root

# 7. Print the welcome menu by default when they log in
RUN echo "mission" >> /root/.bashrc