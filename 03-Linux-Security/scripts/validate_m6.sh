#!/bin/bash

SCORE=0
echo "Commencing Advanced Security Audit for Mission 6..."
sleep 1

# Check 1: Is the shadow file unlocked?
if lsattr /etc/shadow 2>/dev/null | grep -q "\-\-\-\-a"; then
    echo "[-] The Hostage: Password modifications are still physically blocked."
else
    echo "[+] The Hostage: The shadow file is unlocked. Passwords can be changed."
    ((SCORE++))
fi

# Check 2: Is PAM cleaned?
if grep -q "pam_exec.so" /etc/pam.d/common-auth; then
    echo "[-] The Booby Trap: The authentication stack is still executing the credential logger."
else
    echo "[+] The Booby Trap: The authentication stack is sanitized."
    ((SCORE++))
fi

# Check 3: Is the system cron job destroyed?
if [ -f /etc/cron.d/sys_sync ]; then
    echo "[-] The Heartbeat: The rogue pulse is still firing from the system scheduler."
else
    echo "[+] The Heartbeat: The hidden scheduler job has been eradicated."
    ((SCORE++))
fi

echo "----------------------------------------"

# Final Check
if [ $SCORE -eq 3 ]; then
    echo "[SUCCESS] The Bastion is cleansed. Outstanding work."
    # Decodes to: FLAG{Incident_Response_Mastered}
    echo "RkxBR3tJbmNpZGVudF9SZXNwb25zZV9NYXN0ZXJlZH0=" | base64 --decode
    echo ""
else
    echo "[FAILED] You secured $SCORE out of 3 objectives. The system is still compromised."
fi