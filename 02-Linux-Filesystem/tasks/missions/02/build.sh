#!/bin/bash

set -e

MISSION="/opt/linux-handbook/missions/02"

bash "$MISSION/workspace.sh"

bash "$MISSION/challenge.sh"

echo
echo "Mission 02 Ready."
echo