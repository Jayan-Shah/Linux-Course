#!/bin/bash

set -e

ROOT="/home/student/lab/workspace"

if [ ! -L "$ROOT/tmp/reports" ]; then

echo

echo "reports is not a symbolic link."

exit 1

fi

TARGET=$(readlink "$ROOT/tmp/reports")

if [[ "$TARGET" != *srv/reports* ]]; then

echo

echo "reports points to wrong location."

exit 1

fi

echo

echo "========================================"

echo

echo "Mission 03 Completed"

echo

echo "FLAG"

echo

echo "LH{PERSISTENT_STORAGE_MASTERED}"

echo

echo "lab next"

echo

echo "========================================"