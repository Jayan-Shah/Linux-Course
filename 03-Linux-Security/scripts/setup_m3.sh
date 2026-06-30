#!/bin/bash

# 1. Create the challenge briefing
cat << 'EOF' > /root/challenge.txt
===================================================================
OPERATION: THE SILENT ALARMS (MISSION 3)
===================================================================
Analyst,

The rogue admin has tampered with our visibility. We suspect they 
executed a unauthorized script, but the primary system logs are missing. 

HINT 1: THE BLINDFOLD (workspace/audit_service/rsyslog.conf)
The central logging service has been told to ignore all authentication 
and privilege-related events. They are being routed into a black hole.
Reconfigure the service to send 'authpriv' events to a new file 
located at: /var/log/secure_auth.log

HINT 2: THE FOOTPRINT (System-wide Search)
Before they completely blinded the system, they triggered a 'CRITICAL' 
event. Knowing we would look for it, they dumped the log entry into 
a random system directory to hide it in plain sight.

Find the file containing the word 'CRITICAL' and save exactly that line 
to a new file at: /root/workspace/solution.txt

Good luck.
===================================================================
EOF

# 2. Create the workspace
mkdir -p /root/workspace/audit_service

# 3. Create the sabotaged logging config
# We route authpriv.* to /dev/null
cat << 'EOF' > /root/workspace/audit_service/rsyslog.conf
# Standard Logging
*.*;auth,authpriv.none  -/var/log/syslog

# The Rogue Admin's "Blindfold"
authpriv.* /dev/null
EOF

# 4. Plant the hidden footprint deep in the filesystem
mkdir -p /usr/share/doc/sys_cache/
echo "CRITICAL: System access breached by user: shadow_admin" > /usr/share/doc/sys_cache/hidden_log.txt

echo "[*] Mission 3 environment deployed. Read 'challenge.txt' to begin."