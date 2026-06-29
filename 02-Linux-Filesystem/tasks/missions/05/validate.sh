#!/bin/bash

set -e

ROOT="/home/student/lab/workspace"

FAILED=0

echo
echo "Running Production Health Checks..."
echo

########################################
# Configuration
########################################

if [ ! -f "$ROOT/etc/company.conf" ]; then
    echo "✗ Configuration not restored."
    FAILED=1
else
    echo "✓ Configuration restored."
fi

########################################
# Logs
########################################

if [ ! -f "$ROOT/var/log/system.log" ]; then
    echo "✗ System logs not restored."
    FAILED=1
else
    echo "✓ System logs restored."
fi

########################################
# Analytics Deployment
########################################

if [ ! -L "$ROOT/usr/local/bin/analytics" ]; then
    echo "✗ Analytics deployment incomplete."
    FAILED=1
else
    TARGET=$(readlink "$ROOT/usr/local/bin/analytics")

    if [ "$TARGET" != "../../opt/analytics-suite/analytics" ]; then
        echo "✗ Analytics points to the wrong location."
        FAILED=1
    else
        echo "✓ Analytics deployment restored."
    fi
fi

########################################
# Reports
########################################

if [ ! -L "$ROOT/tmp/reports" ]; then
    echo "✗ Report storage is incorrect."
    FAILED=1
else
    TARGET=$(readlink "$ROOT/tmp/reports")

    if [ "$TARGET" != "../srv/reports" ]; then
        echo "✗ Reports point to the wrong location."
        FAILED=1
    else
        echo "✓ Report storage restored."
    fi
fi

########################################
# Final Confirmation
########################################

if [ ! -d /home/student/lab/production-restored ]; then
    echo "✗ Production restoration not confirmed."
    FAILED=1
else
    echo "✓ Production restored."
fi

########################################

echo

if [ "$FAILED" -eq 1 ]; then
    echo
    echo "Production is still unhealthy."
    echo
    echo "Continue investigating..."
    exit 1
fi

echo
echo "==============================================="
echo
echo "CloudForge Technologies"
echo
echo "Production Restored Successfully"
echo
echo "All Systems Operational"
echo
echo "Subsystems Verified"
echo
echo "✓ Configuration"
echo "✓ Logging"
echo "✓ Analytics Deployment"
echo "✓ Persistent Reports"
echo "✓ Production Recovery"
echo
echo "FLAG"
echo
echo "LH{LINUX_FILESYSTEM_MASTER}"
echo
echo "==============================================="
echo
echo "🎉 Congratulations!"
echo
echo "You have successfully completed"
echo
echo "Module 1 - Linux Filesystem"
echo