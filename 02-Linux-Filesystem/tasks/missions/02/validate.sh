#!/bin/bash

set -e

ROOT="/home/student/lab/workspace"

FAILED=0

check_file() {

FILE="$1"
DIR="$2"

if [ ! -f "$ROOT/$DIR/$FILE" ]; then
    echo "✗ $FILE should be inside $DIR"
    FAILED=1
fi

}

check_file company.conf etc

check_file nginx.log var/log

check_file cache.tmp tmp

check_file customer-data srv

check_file notes.txt home/intern

check_file python-app opt

echo

if [ "$FAILED" -eq 1 ]; then

    echo
    echo "Mission not completed."
    exit 1

fi

echo "======================================="
echo
echo "Mission 02 Completed Successfully!"
echo
echo "You restored the Linux filesystem."
echo
echo "FLAG"
echo
echo "LH{FILESYSTEM_RESTORED}"
echo
echo "Run"
echo
echo "lab next"
echo
echo "======================================="