#!/bin/bash

set -e

if [ ! -d /home/student/lab/onboarding-complete ]; then

echo
echo "Onboarding is not complete."
echo
exit 1

fi

echo
echo "============================================"
echo
echo "CloudForge Technologies"
echo
echo "Investigation Completed Successfully"
echo
echo "You discovered:"
echo
echo "✓ /home"
echo "✓ /etc"
echo "✓ /tmp"
echo "✓ /var/log"
echo "✓ Hidden Files"
echo
echo "FLAG"
echo
echo "LH{FILESYSTEM_FOUNDATIONS_MASTERED}"
echo
echo "Next Mission"
echo
echo "lab next"
echo
echo "============================================"