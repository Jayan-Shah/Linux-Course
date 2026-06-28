#!/bin/bash

set -e

source /opt/linux-handbook/lab/common.sh

echo
echo "Current Mission : $(cat "$STATE_DIR/current")"
echo