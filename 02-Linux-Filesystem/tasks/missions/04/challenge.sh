#!/bin/bash

set -e

LAB_HOME="/home/student/lab"

cat > "$LAB_HOME/challenge.txt" <<EOF
====================================================

CloudForge Technologies

Mission 04

The Broken Deployment

====================================================

Yesterday the deployment team installed the brand
new Analytics Suite.

The installation completed successfully.

Unfortunately nobody can launch the application.

The deployment team insists the software is already
installed.

You are NOT allowed to move the application.

You are NOT allowed to modify the application.

Restore the deployment using Linux filesystem
best practices.

When finished,

run

lab validate

====================================================
EOF