FROM ubuntu:22.04

# Install standard tools (No gcc or shc needed anymore!)
RUN apt-get update && apt-get install -y \
    acl \
    sudo \
    vim \
    nano \
    && rm -rf /var/lib/apt/lists/*

# Copy our scripts in
COPY scripts/setup_vulnerabilities.sh /tmp/
COPY scripts/validate_mission_1.sh /tmp/

# 1. Run the setup script to create the challenge
RUN chmod +x /tmp/setup_vulnerabilities.sh && \
    /tmp/setup_vulnerabilities.sh && \
    rm /tmp/setup_vulnerabilities.sh

# 2. The Obfuscation Technique
# Encode the script to a single line of Base64, then create a wrapper to execute it
RUN B64=$(base64 -w 0 /tmp/validate_mission_1.sh) && \
    echo '#!/bin/bash' > /usr/local/bin/validate_mission_1 && \
    echo "echo '$B64' | base64 --decode | bash" >> /usr/local/bin/validate_mission_1 && \
    chmod +x /usr/local/bin/validate_mission_1

# 3. Destroy the original readable script
RUN rm /tmp/validate_mission_1.sh

# Drop the student directly into the root folder
WORKDIR /root