#!/bin/bash

set -e

LAB_HOME="/home/student/lab"

cat > "$LAB_HOME/challenge.txt" <<EOF
====================================================

CloudForge Technologies

Mission 05

The Midnight Production Outage

====================================================

At 02:17 AM the production server stopped working.

Finance reports are disappearing.

Analytics cannot be launched.

Configuration files have been misplaced.

System logs are missing.

The previous administrator left one message:

"Everything you need already exists."

Investigate the filesystem.

Restore every subsystem.

Do NOT reinstall anything.

Do NOT delete anything unless necessary.

When you believe production has been restored,

run

lab validate

====================================================
EOF