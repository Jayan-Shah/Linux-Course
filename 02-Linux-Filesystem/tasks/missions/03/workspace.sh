#!/bin/bash

set -e

LAB_HOME="/home/student/lab"
WORKSPACE="$LAB_HOME/workspace"

rm -rf "$WORKSPACE"
mkdir -p "$WORKSPACE"

cd "$WORKSPACE"

####################################################
# Filesystem Structure
####################################################

mkdir -p bin
mkdir -p tmp
mkdir -p srv/reports
mkdir -p var/log
mkdir -p home/finance
mkdir -p etc
mkdir -p archive

####################################################
# Report Generator
####################################################

cat > bin/report-generator << 'EOF'
#!/bin/bash

REPORT_DIR="../tmp/reports"

mkdir -p "$REPORT_DIR"

echo "CloudForge Daily Revenue Report" > "$REPORT_DIR/report.txt"
echo "Generated: $(date)" >> "$REPORT_DIR/report.txt"

echo
echo "Generating Financial Reports..."
sleep 1
echo "Reports generated successfully."
echo
EOF

chmod +x bin/report-generator

####################################################
# Finance Team
####################################################

cat > home/finance/README.md <<EOF
CloudForge Finance Department

Good Morning Engineer,

Yesterday our automated report generation completed
successfully.

Today every report disappears after the nightly reboot.

The developers insist the application is functioning
correctly.

Unfortunately nobody remembers where the report
generator is installed.

Please investigate the system.

Rules

• Do NOT modify the application.
• Do NOT reinstall anything.
• Restore the system without changing business logic.

When the issue is resolved,

run

lab validate
EOF

####################################################
# Configuration
####################################################

cat > etc/report.conf <<EOF
Report Generator Configuration

Application Status : Healthy

No configuration errors detected.
EOF

####################################################
# Logs
####################################################

cat > var/log/report.log <<EOF
============================

CloudForge Report Service

06:00 Report generation started

06:00 Report generation completed successfully

No application errors detected

============================
EOF

####################################################
# Archive
####################################################

cat > archive/old-report.txt <<EOF
Revenue Report

Generated last week.
EOF

####################################################
# Temporary Area
####################################################

cat > tmp/README.md <<EOF
Temporary Storage

Anything stored here may disappear after reboot.
EOF

####################################################
# Fake Noise
####################################################

touch tmp/cache.tmp
touch tmp/session.lock
touch archive/archive.tar
touch home/finance/notes.txt
touch home/finance/todo.txt