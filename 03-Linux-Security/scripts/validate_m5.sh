#!/bin/bash

SCORE=0
echo "Commencing Advanced Security Audit for Mission 5..."
sleep 1

# Check 1: Is the phantom user gone and the SUID removed?
if ! id "phantom" &>/dev/null; then
    if [ ! -u /usr/local/bin/.sys_health ]; then
        echo "[+] The Ghost: Rogue identity and privilege escalation vector neutralized."
        ((SCORE++))
    else
        echo "[-] The Ghost: The user is gone, but the hidden SUID wand remains!"
    fi
else
    echo "[-] The Ghost: The 'phantom' user still exists on the system."
fi

# Check 2: Is the SSH config fixed and unfrozen?
if lsattr /etc/ssh/sshd_config 2>/dev/null | grep -q -- "-i-"; then
    echo "[-] The Vault: The SSH config file is still frozen (immutable)."
else
    if ! grep -q "AuthorizedKeysFile /etc/ssh/keys/%u" /etc/ssh/sshd_config; then
        echo "[+] The Vault: SSH configuration restored and secured."
        ((SCORE++))
    else
        echo "[-] The Vault: The rogue AuthorizedKeysFile directive is still active."
    fi
fi

# Check 3: Is PAM clean and the firewall patched?
if ! grep -q "pam_exec.so" /etc/pam.d/common-auth; then
    if ! iptables -S OUTPUT | grep -q "10.10.10.10"; then
        echo "[+] The Rat: Authentication sanitized and perimeter leak sealed."
        ((SCORE++))
    else
        echo "[-] The Rat: PAM is clean, but the firewall is still allowing outbound traffic to the rogue IP."
    fi
else
    echo "[-] The Rat: The malicious pam_exec.so hook is still firing on login."
fi

echo "----------------------------------------"

# Final Check
if [ $SCORE -eq 3 ]; then
    echo "[SUCCESS] Operation Phantom Complete. You are a true sysadmin."
    # Decodes to: FLAG{Advanced_System_Hardening_Mastered}
    echo "RkxBR3tBZHZhbmNlZF9TeXN0ZW1fSGFyZGVuaW5nX01hc3RlcmVkfQ==" | base64 --decode
    echo ""
else
    echo "[FAILED] You secured $SCORE out of 3 objectives. The ghost is still in the machine."
fi