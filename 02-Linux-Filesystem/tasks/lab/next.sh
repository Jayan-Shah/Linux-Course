#!/bin/bash

set -e

source /opt/linux-handbook/lab/common.sh

CURRENT=$(cat "$STATE_DIR/current")

NEXT=$(printf "%02d" $((10#$CURRENT + 1)))

if [ ! -d "$MISSIONS_DIR/$NEXT" ]; then
    echo
    echo "Module Completed."
    exit 0
fi

echo "$NEXT" > "$STATE_DIR/current"

bash /opt/linux-handbook/lab/load.sh