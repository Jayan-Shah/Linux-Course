#!/bin/bash

# 1. Create the challenge briefing
cat << 'EOF' > /root/challenge.txt
===================================================================
OPERATION: THE POISONED BASTION (MISSION 6)
===================================================================
Analyst,

We are dealing with an Advanced Persistent Threat (APT). The attacker 
has deeply compromised the server's authentication and scheduling layers. 

We don't know exactly what they did, but we have three critical symptoms. 
You must diagnose the root causes and neutralize them.

SYMPTOM 1: THE HOSTAGE
No one on the system can change their passwords. Even when 'root' 
runs the 'passwd' command, the system throws an authentication token 
manipulation error. The permissions on the password files look normal, 
but something deeper is locking them down.

SYMPTOM 2: THE BOOBY TRAP
Threat intel indicates that credentials are being stolen at the exact 
moment of login. Our primary authentication flow has been poisoned to 
execute a hidden logger script every time an authenticating event occurs.

SYMPTOM 3: THE HEARTBEAT
Network monitors show a tiny outward ping to a rogue IP (10.9.8.7) 
happening exactly every minute. It is not running as a background daemon, 
and it doesn't show up in the standard root crontab. It is pulsing from 
the system's core scheduling directories.

Identify the compromised configurations. Neutralize the threats.
===================================================================
EOF

# --- SABOTAGE 1: The Hostage (Attributes) ---
# Give the shadow file the 'Append Only' attribute.
# Passwords cannot be updated because passwd needs to modify lines, not just append.
chattr +a /etc/shadow

# --- SABOTAGE 2: The Booby Trap (PAM) ---
# Create a fake credential logger
echo "#!/bin/bash" > /usr/local/bin/.auth_logger
echo "echo 'Credentials captured' >> /var/tmp/.creds" >> /usr/local/bin/.auth_logger
chmod +x /usr/local/bin/.auth_logger
# Inject it into the PAM stack
sed -i '1s/^/auth optional pam_exec.so quiet expose_authtok \/usr\/local\/bin\/.auth_logger\n/' /etc/pam.d/common-auth

# --- SABOTAGE 3: The Heartbeat (Cron) ---
# Hide a cron job in the system directories, bypassing standard 'crontab -l'
echo "* * * * * root /bin/nc -z 10.9.8.7 8080" > /etc/cron.d/sys_sync
chmod 644 /etc/cron.d/sys_sync

echo "[*] Mission 6 (The Poisoned Bastion) deployed."