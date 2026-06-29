#!/bin/bash

set -e

LAB_HOME="/home/student/lab"
WORKSPACE="$LAB_HOME/workspace"

rm -rf "$WORKSPACE"
mkdir -p "$WORKSPACE"

#############################################
# Create Linux Users & Groups
#############################################

for GROUP in finance developer intern audit
do
    getent group "$GROUP" >/dev/null || groupadd "$GROUP"
done

for USER in finance developer intern auditor
do
    if ! id "$USER" >/dev/null 2>&1; then
        useradd -M -s /usr/sbin/nologin "$USER"
    fi
done

usermod -g finance finance
usermod -g developer developer
usermod -g intern intern
usermod -g audit auditor

#############################################
# Filesystem
#############################################

mkdir -p "$WORKSPACE"

cd "$WORKSPACE"

mkdir -p \
etc \
srv \
projects/payroll \
home/{finance,developer,intern} \
var/log \
archive

#############################################
# Payroll Database
#############################################

cat > projects/payroll/payroll.db <<EOF
Payroll Database

Salary Information

Confidential
EOF

#############################################
# Payroll Configuration
#############################################

cat > etc/payroll.conf <<EOF
PAYROLL_ENV=production
PAYROLL_PORT=9000
EOF

#############################################
# Payroll Service
#############################################

cat > srv/payroll-service <<EOF
Payroll Service Binary
EOF

chmod +x srv/payroll-service

#############################################
# Mentor Note
#############################################

cat > home/finance/README.md <<EOF
CloudForge Security Audit

Three production files have incorrect ownership.

Investigate every production directory.

Restore both the owner and the group.

Hint:

Use

ls -l

to inspect ownership.
EOF

#############################################
# Noise Files
#############################################

touch archive/old-backup.tar
touch archive/server.img
touch var/log/system.log
touch home/intern/notes.txt
touch home/developer/todo.txt

#############################################
# Intentionally Wrong Ownership
#############################################

chown intern:intern projects/payroll/payroll.db

chown developer:developer etc/payroll.conf

chown intern:developer srv/payroll-service