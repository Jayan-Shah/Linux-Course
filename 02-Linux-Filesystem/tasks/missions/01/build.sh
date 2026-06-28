#!/bin/bash

set -e

MISSION="/opt/linux-handbook/missions/01"

bash "$MISSION/workspace.sh"
bash "$MISSION/challenge.sh"

echo
echo "Mission Ready."
echo