#!/bin/bash

set -e

source /opt/linux-handbook/lab/common.sh

CURRENT=$(cat "$STATE_DIR/current")

bash /opt/linux-handbook/lab/cleanup.sh

bash "$MISSIONS_DIR/$CURRENT/build.sh"

echo
echo "========================================="
echo " Linux Handbook"
echo "========================================="
echo
echo "Mission Loaded Successfully."
echo
echo "Go to your lab:"
echo
echo "cd ~/lab"
echo
echo "Then:"
echo
echo "cat challenge.txt"
echo