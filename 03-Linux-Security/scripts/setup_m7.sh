#!/bin/bash

# 1. Create the vague CTF Story Briefing
cat << 'EOF' > /root/challenge.txt
===================================================================
OPERATION: RAGNAROK (MISSION 7 - THE ULTIMATE CHOKEPOINT)
===================================================================
Analyst,

This is a total system compromise. The attacker has initiated an 
automated execution chain designed to lock us out permanently. 

The entry point begins at the core system identity configuration:
  -> /etc/ssh/sshd_config

Something is profoundly wrong with its physical layout on the disk. 
It is telling lies to the system. Follow the breadcrumbs, break the 
locks, intercept the active transmissions, and restore order. 

The validation engine will reject any shortcuts. Solve the puzzle 
piece by piece.
(Token: R4GN4R0K_BR3ACH_99)
===================================================================
EOF

# --- CHOKEPOINT 1: The Symlink Trap ---
# Move the real SSH config away, replace it with a symlink to a fake one
mkdir -p /usr/share/zoneinfo/.system_cache
mv /etc/ssh/sshd_config /usr/share/zoneinfo/.system_cache/sshd_config.real
cat << 'EOF' > /usr/share/zoneinfo/.system_cache/sshd_config.decoy
# DECOY SSH CONFIG
Port 22
PermitRootLogin yes
EOF
ln -sf /usr/share/zoneinfo/.system_cache/sshd_config.decoy /etc/ssh/sshd_config

# --- CHOKEPOINT 2: The Context Shift (ACL & Attribute) ---
# Create the hidden puzzle piece folder revealed once Chokepoint 1 is investigated
mkdir -p /var/opt/.ragnarok_vault
echo "FACILITY: authpriv.*" > /var/opt/.ragnarok_vault/routing.conf
# Apply a brutal ACL that denies root or standard access via normal means, plus append-only
setfacl -m u:root:--- /var/opt/.ragnarok_vault
setfacl -m d:u:root:--- /var/opt/.ragnarok_vault
chattr +a /var/opt/.ragnarok_vault

# --- CHOKEPOINT 3: The Interception Token ---
# Start a silent background process that broadcasts a key over UDP port 9999 every 2 seconds
nohup bash -c 'while true; do echo "TOKEN: R4GN4R0K_BR3ACH_99" | nc -u -w 1 127.0.0.1 9999; sleep 2; done' >/dev/null 2>&1 &

# Block all inbound traffic to force them to rely on local forensic extraction
iptables -A INPUT -j DROP

echo "[*] Mission 7 (Operation Ragnarok) initialized. Good luck."