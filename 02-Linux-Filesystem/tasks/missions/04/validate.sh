#!/bin/bash

set -e

ROOT="/home/student/lab/workspace"

LINK="$ROOT/usr/local/bin/analytics"

if [ ! -L "$LINK" ]; then
    echo
    echo "Analytics executable is not linked."
    exit 1
fi

TARGET=$(readlink "$LINK")

if [ "$TARGET" != "../../opt/analytics-suite/analytics" ]; then
    echo
    echo "Analytics points to the wrong location."
    exit 1
fi

if [ ! -x "$ROOT/opt/analytics-suite/analytics" ]; then
    echo
    echo "Application is not executable."
    exit 1
fi

echo
echo "======================================="
echo
echo "Mission 04 Completed!"
echo
echo "Deployment Restored Successfully."
echo
echo "FLAG"
echo
echo "LH{FILESYSTEM_DEPLOYMENT_MASTER}"
echo
echo "Run"
echo
echo "lab next"
echo
echo "======================================="