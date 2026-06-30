#!/bin/bash

# Hard-reset the terminal screen
printf '\033c'

# Reset the environment safely
echo "[*] Clearing workspace for new deployment..."
mkdir -p /root/workspace
find /root/workspace -mindepth 1 -delete 2>/dev/null
rm -f /root/challenge.txt 2>/dev/null

# Load the requested mission
if [ "$1" == "1" ]; then
    /opt/sec_scripts/setup_m1.sh >/dev/null
    printf '\033c'
    cat /root/challenge.txt
elif [ "$1" == "2" ]; then
    /opt/sec_scripts/setup_m2.sh >/dev/null
    printf '\033c'
    cat /root/challenge.txt
elif [ "$1" == "3" ]; then
    /opt/sec_scripts/setup_m3.sh >/dev/null
    printf '\033c'
    cat /root/challenge.txt
# Add this underneath the Mission 3 block:
elif [ "$1" == "4" ]; then
    /opt/sec_scripts/setup_m4.sh >/dev/null
    printf '\033c'
    cat /root/challenge.txt
# Add this right after the Mission 4 block
elif [ "$1" == "5" ]; then
    /opt/sec_scripts/setup_m5.sh >/dev/null
    printf '\033c'
    cat /root/challenge.txt
elif [ "$1" == "6" ]; then
    /opt/sec_scripts/setup_m6.sh >/dev/null
    printf '\033c'
    cat /root/challenge.txt
elif [ "$1" == "7" ]; then
    /opt/sec_scripts/setup_m7.sh >/dev/null
    printf '\033c'
    cat /root/challenge.txt
else
    printf '\033c'
    echo "========================================="
    echo "       NOVA TECH - CYBER RANGE           "
    echo "========================================="
    echo "Available Commands:"
    echo "  mission 1    - Load 'The Insider Threat'"
    echo "  mission 2    - Load 'The Bouncer and the Gate'"
    echo "  mission 3    - Load 'The Silent Alarms'"
    echo "  mission 4    - Load 'Securing the Perimeter'"
    echo "  mission 5    - Load 'The Rogue Admin'"
    echo "  mission 6    - Load 'The Position Bastion'"
    echo "  mission 7    - Load 'Ragnarok'"
    echo "  validate 1   - Check your work for Mission 1"
    echo "  validate 2   - Check your work for Mission 2"
    echo "  validate 3   - Check your work for Mission 3"
    echo " validate 4    - Check your work for Mission 4"
    echo " validate 5    - Check your work for Mission 5"
    echo " validate 6    - Check your work for Mission 6"
    echo " validate 7    - Check your work for Mission 7"
    echo "========================================="
fi