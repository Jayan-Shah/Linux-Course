#!/bin/bash
printf '\033c'

echo "[*] Clearing workspace for new deployment..."
mkdir -p /root/workspace
find /root/workspace -mindepth 1 -delete 2>/dev/null
rm -f /root/challenge.txt 2>/dev/null

if [ "$1" == "1" ]; then
    /opt/sec_scripts/setup_m1 >/dev/null 2>&1
    sleep 0.5  # Give the binary a brief window to commit the file to disk
    printf '\033c'
    cat /root/challenge.txt

elif [ "$1" == "2" ]; then
    /opt/sec_scripts/setup_m2 >/dev/null
    sleep 0.5
    printf '\033c'
    cat /root/challenge.txt

elif [ "$1" == "3" ]; then
    /opt/sec_scripts/setup_m3 >/dev/null
    sleep 0.5
    printf '\033c'
    cat /root/challenge.txt

# Add this right after the Mission 3 block
elif [ "$1" == "4" ]; then
    /opt/sec_scripts/setup_m4 >/dev/null
    sleep 0.5
    printf '\033c'
    cat /root/challenge.txt

elif [ "$1" == "5" ]; then
    /opt/sec_scripts/setup_m5 >/dev/null 2>&1
    sleep 0.5
    printf '\033c'
    cat /root/challenge.txt

elif [ "$1" == "6" ]; then
    /opt/sec_scripts/setup_m6 >/dev/null 2>&1
    sleep 0.5
    printf '\033c'
    cat /root/challenge.txt

elif [ "$1" == "7" ]; then
    /opt/sec_scripts/setup_m7 >/dev/null 2>&1
    sleep 0.5
    printf '\033c'
    cat /root/challenge.txt
    
else
    printf '\033c'
    echo "========================================="
    echo "    ACTIVE DEFENSE - FIREWALL RANGE      "
    echo "========================================="
    echo "Available Commands:"
    echo "  mission 1    - Load 'The Broken Bridge'"
    echo "  mission 2    - Load 'The Rogue Peripheral'"
    echo "  mission 3    - Load 'The Automaton'"
    echo "  mission 4    - Load 'The Firewall Fortress'"
    echo "  mission 5    - Load 'The Final Firewall'"
    echo "  mission 6    - Load 'CERBERUS'"
    echo "  mission 7    - Load 'TARTARUS'"
    echo "  validate 1   - Check your work for Mission 1"
    echo "  validate 2   - Check your work for Mission 2"
    echo "  validate 3   - Check your work for Mission 3"
    echo "  validate 4   - Check your work for Mission 4"
    echo "========================================="
fi