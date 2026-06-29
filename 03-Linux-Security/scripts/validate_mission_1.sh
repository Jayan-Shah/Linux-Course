#!/bin/bash

SCORE=0
echo "Commencing Security Audit for Mission 1..."
sleep 1

# Check 1: SUID removed from backup_utility
PERMS=$(stat -c "%a" /root/workspace/tools/backup_utility 2>/dev/null)
if [[ -n "$PERMS" && $PERMS != 4* ]]; then
    echo "[+] Breach 1 Closed: The ghost capability has been neutralized."
    ((SCORE++))
else
    echo "[-] Breach 1 Active: A tool is still executing with owner privileges."
fi

# Check 2: 'guest' ACL removed from finance_data
if ! getfacl /root/workspace/finance_data 2>/dev/null | grep -q "user:guest:"; then
    echo "[+] Breach 2 Closed: Hidden VIP pass revoked."
    ((SCORE++))
else
    echo "[-] Breach 2 Active: The 'guest' user still has a hidden backdoor."
fi

# Check 3: audit_log.txt is immutable
if lsattr /root/workspace/finance_data/audit_log.txt 2>/dev/null | grep -q -- "-i-"; then
    echo "[+] Breach 3 Closed: The vault is locked."
    ((SCORE++))
else
    echo "[-] Breach 3 Active: The audit log can still be tampered with."
fi

echo "----------------------------------------"

# Final Check
if [ $SCORE -eq 3 ]; then
    echo "[SUCCESS] All threats neutralized. System secured."
    echo "Submit this flag to prove completion:"
    echo "RkxBR3tJbnZlc3RpZ2F0aXZlX1NlY3VyaXR5X01hc3RlcmVkfQ==" | base64 --decode
    echo ""
else
    echo "[FAILED] You secured $SCORE out of 3 objectives. Read the clues and try again!"
fi