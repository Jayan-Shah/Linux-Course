#!/bin/bash

set -e

LAB_HOME="/home/student/lab"

cat > "$LAB_HOME/challenge.txt" <<EOF
====================================================

CloudForge Technologies

Mission 01

Lost in the Filesystem

====================================================

Welcome Engineer,

Today is your first day at CloudForge.

Before you receive access to production systems,
your mentor wants to ensure you understand how Linux
organizes information.

Your onboarding report has been moved several times.

Follow the trail.

Read every clue carefully.

Do not modify anything unless instructed.

When your onboarding is complete,

run

lab validate

====================================================
EOF