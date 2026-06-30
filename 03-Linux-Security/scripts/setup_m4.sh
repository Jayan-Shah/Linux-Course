#!/bin/bash

# 1. Create the challenge briefing
cat << 'EOF' > /root/challenge.txt
===================================================================
OPERATION: SECURING THE PERIMETER (MISSION 4)
===================================================================
Analyst,

The attacker has severely compromised our host-based network defenses 
and established a persistent backdoor. 

HINT 1: THE BLEEDING PORT (Rogue Process)
The attacker left a rogue background process listening for incoming 
connections on Port 6666. Find this active listening process and 
terminate it completely.

HINT 2: THE BROKEN SHIELD (Host Firewall)
The server's 'iptables' firewall has been wiped and set to allow ALL 
incoming traffic by default. 
1. Add a rule to explicitly ACCEPT incoming TCP traffic on Port 22 (SSH).
2. Change the default INPUT policy to DROP everything else.

WARNING: If you change the policy to DROP before allowing Port 22, 
you will simulate locking yourself out of the server!

Good luck.
===================================================================
EOF

# 2. Reset and ruin the firewall (Open everything)
iptables -F
iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT
iptables -P FORWARD ACCEPT

# 3. Launch a hidden background backdoor (Listening on Port 6666)
# We use nohup so it survives in the background
nohup nc -l -p 6666 > /dev/null 2>&1 &

echo "[*] Mission 4 environment deployed. Read 'challenge.txt' to begin."