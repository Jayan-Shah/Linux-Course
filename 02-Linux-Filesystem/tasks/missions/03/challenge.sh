#!/bin/bash

set -e

LAB_HOME="/home/student/lab"

cat > "$LAB_HOME/challenge.txt" <<EOF
====================================================

CloudForge Technologies

Mission 03

The Vanishing Reports

====================================================

Every morning CloudForge generates financial reports
for the finance department.

Yesterday everything worked.

Today every report disappears after the nightly reboot.

The finance department believes the application is
broken.

The developers insist the application is correct.

Your task is to investigate.

Nobody remembers where the report generator is
installed.

Find it.

Understand why the reports disappear.

Restore the system without modifying the application.

When finished,

run

lab validate

====================================================
EOF