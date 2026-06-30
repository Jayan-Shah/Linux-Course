#!/bin/bash

SCORE=0
echo "Commencing Security Audit for Mission 2..."
sleep 1

# Check 1: Root Login Disabled
if grep -qE "^\s*PermitRootLogin\s+no" /root/workspace/gate_service/daemon_config; then
    echo "[+] The Gate: Superuser front-door access denied."
    ((SCORE++))
else
    echo "[-] The Gate: The superuser is still permitted to log in directly."
fi

# Check 2: Password Auth Disabled
if grep -qE "^\s*PasswordAuthentication\s+no" /root/workspace/gate_service/daemon_config; then
    echo "[+] The Gate: Password authentication disabled (PKI Enforced)."
    ((SCORE++))
else
    echo "[-] The Gate: Passwords are still allowed. Enforce keys."
fi

# Check 3 & 4: PAM Faillock configured
PAM_FILE="/root/workspace/identity_manager/auth_policy"
if grep -qE "pam_faillock.so" "$PAM_FILE"; then
    if grep -qE "deny=3" "$PAM_FILE" && grep -qE "unlock_time=900" "$PAM_FILE"; then
        echo "[+] The Bouncer: Strikeout rule (3 attempts / 15 mins) enforced."
        ((SCORE+=2))
    else
        echo "[-] The Bouncer: The module is present, but the limits (deny/unlock_time) are wrong."
    fi
else
    echo "[-] The Bouncer: The strikeout rule (pam_faillock.so) is completely missing."
fi

echo "----------------------------------------"

# Final Check
if [ $SCORE -eq 4 ]; then
    echo "[SUCCESS] The front door is locked. Perimeter secured."
    echo "Submit this flag to prove completion:"
    echo "RkxBR3tBdXRoX0FuZF9BY2Nlc3NfTWFzdGVyZWR9" | base64 --decode
    echo ""
else
    echo "[FAILED] You secured $SCORE out of 4 objectives. Keep digging!"
fi