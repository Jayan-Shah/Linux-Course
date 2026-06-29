#!/bin/bash

set -e

source /opt/linux-handbook/lab/common.sh

mkdir -p "$STATE_DIR"

echo "01" > "$STATE_DIR/current"

bash /opt/linux-handbook/lab/load.sh