#!/bin/bash

set -e

ROOT="/home/student/lab/workspace"

FAILED=0

echo
echo "======================================="
echo " CloudForge Security Audit"
echo "======================================="
echo

########################################
# Payroll Database
########################################

OWNER=$(stat -c %U "$ROOT/projects/payroll/payroll.db")
GROUP=$(stat -c %G "$ROOT/projects/payroll/payroll.db")

if [ "$OWNER" = "finance" ] && [ "$GROUP" = "finance" ]; then
    echo "✓ payroll.db ownership is correct."
else
    echo "✗ payroll.db ownership is incorrect."
    FAILED=1
fi

########################################
# Payroll Configuration
########################################

OWNER=$(stat -c %U "$ROOT/etc/payroll.conf")
GROUP=$(stat -c %G "$ROOT/etc/payroll.conf")

if [ "$OWNER" = "root" ] && [ "$GROUP" = "root" ]; then
    echo "✓ payroll.conf ownership is correct."
else
    echo "✗ payroll.conf ownership is incorrect."
    FAILED=1
fi

########################################
# Payroll Service
########################################

OWNER=$(stat -c %U "$ROOT/srv/payroll-service")
GROUP=$(stat -c %G "$ROOT/srv/payroll-service")

if [ "$OWNER" = "finance" ] && [ "$GROUP" = "finance" ]; then
    echo "✓ payroll-service ownership is correct."
else
    echo "✗ payroll-service ownership is incorrect."
    FAILED=1
fi

########################################

echo

if [ "$FAILED" -eq 1 ]; then
    echo "Security audit failed."
    echo
    echo "Continue investigating ownership..."
    exit 1
fi

echo "======================================="
echo
echo "Mission 01 Completed!"
echo
echo "Unauthorized access removed."
echo
echo "FLAG"
echo
echo "LH{OWNERSHIP_RESTORED}"
echo
echo "Run"
echo
echo "lab next"
echo
echo "======================================="