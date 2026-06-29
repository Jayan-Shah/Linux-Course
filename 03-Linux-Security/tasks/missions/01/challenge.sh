#!/bin/bash

set -e

LAB_HOME="/home/student/lab"

cat > "$LAB_HOME/challenge.txt" <<EOF
====================================================

CloudForge Technologies

Security Division

Mission 01

Unauthorized Access

====================================================

During a routine security audit, CloudForge
discovered that several production files are owned
by the wrong users.

Applications are failing because ownership has been
changed accidentally.

Investigate the filesystem.

Restore the correct owner and group.

Do NOT edit file contents.

Only fix ownership.

When finished,

run

lab validate

====================================================
EOF