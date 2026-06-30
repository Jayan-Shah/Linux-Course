#!/bin/bash

SCORE=0
echo "Commencing Security Audit for Mission 4..."
sleep 1

# Check 1: Is Port 6666 closed?
if ! ss -tuln | grep -q ":6666"; then
    echo "[+] The Bleeding Port: Rogue process terminated."
    ((SCORE++))
else
    echo "[-] The Bleeding Port: A process is still listening on Port 6666."
fi

# Check 2: Is Port 22 explicitly allowed?
if iptables -S | grep -q -E "\-A INPUT \-p tcp \-m tcp \-\-dport 22 \-j ACCEPT"; then
    echo "[+] The Shield: SSH access is explicitly secured."
    ((SCORE++))
else
    echo "[-] The Shield: Port 22 (SSH) is not explicitly allowed. You risk locking yourself out!"
fi

# Check 3: Is the default policy set to DROP?
if iptables -S | grep -q "\-P INPUT DROP"; then
    echo "[+] The Shield: Default inbound traffic is being dropped."
    ((SCORE++))
else
    echo "[-] The Shield: The host is still accepting all incoming connections by default."
fi

echo "----------------------------------------"

# Final Check
if [ $SCORE -eq 3 ]; then
    echo "[SUCCESS] Perimeter secured. Threat eradicated."
    echo "Submit this flag to prove completion:"
    # Decodes to: FLAG{Network_Perimeter_Mastered}
    echo "RkxBR3tOZXR3b3JrX1BlcmltZXRlcl9NYXN0ZXJlZH0=" | base64 --decode
    echo ""
else
    echo "[FAILED] You secured $SCORE out of 3 objectives. Keep investigating."
fi