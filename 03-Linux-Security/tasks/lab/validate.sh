#!/bin/bash

set -e

source /opt/linux-handbook/lab/common.sh

CURRENT=$(cat "$STATE_DIR/current")

bash "$MISSIONS_DIR/$CURRENT/validate.sh"