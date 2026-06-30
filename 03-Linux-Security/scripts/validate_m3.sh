#!/bin/bash

SCORE=0
echo "Commencing Security Audit for Mission 3..."
sleep 1

# Check 1: Did they fix the logging routing?
if grep -qE "authpriv\.\*\s+/var/log/secure_auth.log" /root/workspace/audit_service/rsyslog.conf; then
    echo "[+] The Blindfold: Logging routing restored."
    ((SCORE++))
else
    echo "[-] The Blindfold: 'authpriv' logs are still being discarded."
fi

# Check 2: Did they find the critical footprint?
if grep -q "CRITICAL: System access breached by user: shadow_admin" /root/workspace/solution.txt 2>/dev/null; then
    echo "[+] The Footprint: Forensic evidence recovered."
    ((SCORE++))
else
    echo "[-] The Footprint: 'solution.txt' is missing or contains incorrect data."
fi

echo "----------------------------------------"

# Final Check
if [ $SCORE -eq 2 ]; then
    echo "[SUCCESS] Visibility restored. The rogue admin's trail is documented."
    echo "Submit this flag to prove completion:"
    # Decodes to: FLAG{Logging_And_Forensics_Mastered}
    echo "RkxBR3tMb2dnaW5nX0FuZF9Gb3JlbnNpY3NfTWFzdGVyZWR9" | base64 --decode
    echo ""
else
    echo "[FAILED] You secured $SCORE out of 2 objectives. Keep digging!"
fi