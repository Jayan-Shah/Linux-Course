#!/bin/bash

STEP_A=0
STEP_B=0
STEP_C=0

echo "Executing Non-Linear Architectural Validation..."
sleep 1

# [SCRAMBLED CHECK 1]: Check Chokepoint 2 (The Vault & ACLs)
if [ -d /var/opt/.ragnarok_vault ]; then
    # Use awk to only check the attribute flags (column 1), ignoring the directory path
    if ! lsattr -d /var/opt/.ragnarok_vault 2>/dev/null | awk '{print $1}' | grep -q "a"; then
        # Check if ACLs were removed/reset
        if ! getfacl /var/opt/.ragnarok_vault 2>/dev/null | grep -q "user:root:---"; then
            STEP_B=1
        fi
    fi
fi

# [SCRAMBLED CHECK 2]: Check Chokepoint 3 (The Intercepted Token)
if [ -f /root/workspace/token.txt ]; then
    if grep -q "R4GN4R0K_BR3ACH_99" /root/workspace/token.txt; then
        STEP_C=1
    fi
fi

# [SCRAMBLED CHECK 3]: Check Chokepoint 1 (The Symlink Matrix)
if [ -L /etc/ssh/sshd_config ]; then
    # It is still a symlink, check if it points to the REAL file, not the decoy
    LINK_TARGET=$(readlink /etc/ssh/sshd_config)
    if [[ "$LINK_TARGET" == *".system_cache/sshd_config.real" ]]; then
        STEP_A=1
    fi
else
    # If they deleted the symlink and replaced it with a copy of the real file
    if [ -f /etc/ssh/sshd_config ] && ! grep -q "DECOY" /etc/ssh/sshd_config; then
        STEP_A=1
    fi
fi

# SECURE STATE EVALUATION ENGINE
if [ $STEP_A -eq 1 ] && [ $STEP_B -eq 0 ]; then
    echo "[-] Integrity Error: Filesystem path manipulation detected but context access is denied."
    exit 1
fi

if [ $STEP_A -eq 1 ] && [ $STEP_B -eq 1 ] && [ $STEP_C -eq 1 ]; then
    echo "[SUCCESS] Convergence reached. The Ragnarok execution chain is shattered."
    echo -n "Master Flag: "
    echo "RkxBR3tMaW51eF9BcmNoaXRlY3R1cmVfR29kX01vZGV9" | base64 --decode
    echo ""
else
    echo "[FAILED] System states are completely out of alignment. Keep hunting."
    exit 1
fi