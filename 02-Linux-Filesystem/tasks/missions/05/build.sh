#!/bin/bash

set -e

MISSION="/opt/linux-handbook/missions/05"

bash "$MISSION/workspace.sh"
bash "$MISSION/challenge.sh"

echo
echo "Mission 05 Ready."
echo