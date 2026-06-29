#!/bin/bash

set -e

LAB_HOME="/home/student/lab"
WORKSPACE="$LAB_HOME/workspace"

rm -rf "$WORKSPACE"
mkdir -p "$WORKSPACE"

cd "$WORKSPACE"

####################################################
# Production Filesystem
####################################################

mkdir -p home/{admin,finance,mentor}
mkdir -p etc
mkdir -p var/log
mkdir -p srv/reports
mkdir -p tmp
mkdir -p usr/local/bin
mkdir -p usr/bin
mkdir -p opt/analytics-suite
mkdir -p archive
mkdir -p backups
mkdir -p incoming

####################################################
# Finance
####################################################

cat > home/finance/README.md <<EOF
CloudForge Finance Department

Yesterday's reports generated correctly.

Today every report disappears.

Nobody knows why.

Please investigate.
EOF

touch home/finance/todo.txt
touch home/finance/budget.xlsx

####################################################
# Admin
####################################################

cat > home/admin/README.md <<EOF
CloudForge Operations

Several files appear to have been restored from an
old backup.

Do NOT reinstall the server.

Everything required already exists.

Restore production.
EOF

####################################################
# Mentor
####################################################

cat > home/mentor/.final-note <<EOF
Excellent work.

If you have restored every subsystem,

create

/home/student/lab/production-restored

Run

lab validate
EOF

####################################################
# Misplaced Configuration
####################################################

cat > incoming/company.conf <<EOF
CloudForge Configuration

Production Configuration

Version 5.1
EOF

####################################################
# Misplaced Logs
####################################################

cat > home/admin/system.log <<EOF
System boot completed.

Production services started.
EOF

####################################################
# Analytics Application
####################################################

cat > opt/analytics-suite/analytics <<'EOF'
#!/bin/bash

echo
echo "CloudForge Analytics"
echo
echo "Analytics Started Successfully."
EOF

chmod +x opt/analytics-suite/analytics

####################################################
# Report Generator
####################################################

cat > usr/bin/report-generator <<'EOF'
#!/bin/bash

REPORT_DIR="../tmp/reports"

mkdir -p "$REPORT_DIR"

echo "Daily Finance Report" > "$REPORT_DIR/report.txt"

echo "Reports Generated."
EOF

chmod +x usr/bin/report-generator

####################################################
# Existing Temporary Reports
####################################################

mkdir -p tmp/reports

####################################################
# Logs
####################################################

cat > var/log/deployment.log <<EOF
Deployment completed successfully.
EOF

####################################################
# Archive
####################################################

touch archive/legacy.tar
touch archive/server-2023.img

####################################################
# Backups
####################################################

touch backups/full-backup.tar
touch backups/monthly-backup.tar

####################################################
# Noise Files
####################################################

touch usr/bin/python
touch usr/bin/bash
touch etc/network.conf
touch etc/resolv.conf
touch home/admin/notes.txt
touch home/finance/meeting.txt
touch archive/readme.old