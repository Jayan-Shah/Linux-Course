#!/bin/bash
if [ "$1" == "1" ]; then
    /opt/sec_scripts/setup_m1 --check
elif [ "$1" == "2" ]; then
    /opt/sec_scripts/setup_m2 --check
elif [ "$1" == "3" ]; then
    /opt/sec_scripts/setup_m3 --check
elif [ "$1" == "4" ]; then
    /opt/sec_scripts/setup_m4 --check
elif [ "$1" == "5" ]; then
    echo "[-] Error: Mission 5 has no validation engine. Recover the system flag natively!"
else
    echo "Usage: validate [1|2|3|4]"
fi