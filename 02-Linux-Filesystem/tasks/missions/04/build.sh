#!/bin/bash

set -e

MISSION="/opt/linux-handbook/missions/04"

bash "$MISSION/workspace.sh"
bash "$MISSION/challenge.sh"

echo
echo "Mission 04 Ready."
echo