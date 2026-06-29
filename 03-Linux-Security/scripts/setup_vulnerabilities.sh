#!/bin/bash

# 1. Create the challenge briefing (Cryptic Clues)
cat << 'EOF' > /root/challenge.txt
===================================================================
OPERATION: INSIDER THREAT
===================================================================
Analyst,

The rogue admin staged their work inside the 'workspace' directory. 
We have identified three distinct security breaches you must neutralize.

BREACH 1: THE GHOST IN THE SHELL
Inside the workspace's 'tools' folder, there is a binary. The admin 
modified it so that whenever anyone runs it, it magically executes 
with the elevated privileges of the file's owner (root). 
Neutralize this privilege escalation vector.

BREACH 2: THE HIDDEN PASS
Look inside the 'finance_data' folder. Standard ownership looks perfectly 
secure, but the admin slipped a 'guest' user a VIP pass through the 
back door. Revoke the guest's hidden read/write access without changing 
the main standard permissions.

BREACH 3: THE VAULT
The 'audit_log.txt' inside the finance folder is completely exposed. 
You must lock down its advanced physical attributes on the filesystem 
so that absolutely no one (not even a superuser) can delete or modify it.

Good luck.
===================================================================
EOF

# 2. Create the dummy guest user
useradd -m guest

# 3. Create the workspace structure
mkdir -p /root/workspace/tools
mkdir -p /root/workspace/finance_data

# 4. Setup BREACH 1 (SUID)
cp /bin/bash /root/workspace/tools/backup_utility
chmod 4755 /root/workspace/tools/backup_utility

# 5. Setup BREACH 2 (ACLs)
touch /root/workspace/finance_data/Q3_earnings.csv
chmod 700 /root/workspace/finance_data
setfacl -m u:guest:rwx /root/workspace/finance_data

# 6. Setup BREACH 3 (Immutable)
echo "CRITICAL SYSTEM AUDIT DATA - DO NOT TAMPER" > /root/workspace/finance_data/audit_log.txt

echo "Mission 1 environment prepared."