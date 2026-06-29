#!/bin/bash

set -e

source /opt/linux-handbook/lab/common.sh

CURRENT=$(cat "$STATE_DIR/current")

MISSION_DIR="$MISSIONS_DIR/$CURRENT"

if [ ! -d "$MISSION_DIR" ]; then
    echo "Mission $CURRENT not found."
    exit 1
fi

echo
echo "Loading Mission $CURRENT..."
echo

bash "$MISSION_DIR/build.sh"

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