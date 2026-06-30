#!/bin/bash

# 1. Create the challenge briefing
cat << 'EOF' > /root/challenge.txt
===================================================================
OPERATION: LOCK THE FRONT DOOR (MISSION 2)
===================================================================
Analyst,

We are under active brute-force attack. The rogue admin staged their 
custom, vulnerable network configurations in the 'workspace' directory. 
You must fix these staged files. 

HINT 1: THE GATE (gate_service/daemon_config)
The remote access daemon is far too welcoming. 
- The ultimate superuser (boss) should never be allowed to walk 
  straight through the front door.
- Memorized secret words are easily guessed. Force the use of 
  cryptographic keys for entry instead.

HINT 2: THE BOUNCER (identity_manager/auth_policy)
Brute force attacks are hitting us because the bouncer is asleep. 
We need a strict strikeout rule for the core authentication module: 
- 3 strikes (failed attempts) and you are locked out for 15 minutes (900 seconds).

Good luck.
===================================================================
EOF

# 2. Create the workspace and hide the files
mkdir -p /root/workspace/gate_service
mkdir -p /root/workspace/identity_manager

# 3. Create the vulnerable SSH config (Disguised as daemon_config)
cat << 'EOF' > /root/workspace/gate_service/daemon_config
# Remote Access Daemon Configuration
Port 22
ListenAddress 0.0.0.0

# Authentication Rules
PermitRootLogin yes
MaxAuthTries 10
PasswordAuthentication yes
PermitEmptyPasswords no

# Allow agent forwarding
AllowAgentForwarding yes
EOF

# 4. Create the vulnerable PAM config (Disguised as auth_policy)
cat << 'EOF' > /root/workspace/identity_manager/auth_policy
# Core Authentication Policy
auth    required    pam_env.so
auth    sufficient  pam_unix.so nullok try_first_pass
auth    requisite   pam_succeed_if.so uid >= 1000 quiet_success
auth    required    pam_deny.so

# TODO: The boss said something about locking accounts out? 
# I'll configure the strikeout rule later.
EOF

echo "[*] Mission 2 environment deployed. Read 'challenge.txt' to begin."