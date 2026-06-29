#!/bin/bash

set -e

MISSION="/opt/linux-handbook/missions/03"

bash "$MISSION/workspace.sh"

bash "$MISSION/challenge.sh"

echo
echo "Mission 03 Ready."
echo