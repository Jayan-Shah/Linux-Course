#!/bin/bash

set -e

LAB_HOME="/home/student/lab"

cat > "$LAB_HOME/challenge.txt" <<EOF
====================================================

CloudForge Technologies

Mission 02

The Misplaced Files

====================================================

Welcome Engineer,

Last night an intern migrated several important
files into the wrong directory.

The server still works,
but the filesystem no longer follows Linux
standards.

Your task is to restore order.

Move every file to the correct directory.

Do not rename files.

Do not delete files.

When finished,

run

lab validate

====================================================
EOF