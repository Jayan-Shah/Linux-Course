#!/bin/bash

set -e

LAB_HOME="/home/student/lab"
WORKSPACE="$LAB_HOME/workspace"

rm -rf "$WORKSPACE"
mkdir -p "$WORKSPACE"

cd "$WORKSPACE"

####################################################
# Filesystem
####################################################

mkdir -p home/{mentor,intern,shared,finance}
mkdir -p etc/{ssh,nginx}
mkdir -p var/log
mkdir -p usr/{bin,local}
mkdir -p opt
mkdir -p srv
mkdir -p tmp
mkdir -p archive
mkdir -p backups
mkdir -p projects

####################################################
# Mentor
####################################################

cat > home/mentor/README.md <<EOF
Welcome Engineer,

I prepared your onboarding report yesterday.

Unfortunately several engineers moved it while
reorganizing the server.

The first clue is easy.

Configuration files belong in Linux's configuration
directory.

Find them.

- Alex
Senior Linux Engineer
EOF

cat > home/mentor/welcome.txt <<EOF
Welcome to CloudForge.
EOF

cat > home/mentor/.onboarding_report <<EOF
Congratulations.

You completed the investigation.

Create the directory

/home/student/lab/onboarding-complete

Then run

lab validate
EOF

####################################################
# Configuration
####################################################

cat > etc/company.conf <<EOF
CloudForge Configuration

You found the configuration directory.

The next clue was accidentally copied into a
temporary directory.

Retrieve it before the next reboot.
EOF

####################################################
# Temporary
####################################################

cat > tmp/migration.log <<EOF
Temporary Storage Notice

This directory may be cleared automatically.

The logging service recorded where the final report
was moved.

Check the system logs.
EOF

touch tmp/cache.tmp
touch tmp/session.data

####################################################
# Logs
####################################################

cat > var/log/onboarding.log <<EOF
CloudForge Logging Service

Onboarding Report Relocated

Destination

home/mentor

Visibility

Hidden
EOF

cat > var/log/auth.log <<EOF
Authentication service started...
EOF

cat > var/log/system.log <<EOF
System boot completed successfully.
EOF

####################################################
# Noise Files
####################################################

cat > home/intern/todo.txt <<EOF
Finish onboarding.
Review company handbook.
EOF

cat > home/intern/notes.txt <<EOF
Remember to clean temporary files.
EOF

cat > home/shared/company-policy.md <<EOF
CloudForge Internal Policies
EOF

cat > archive/legacy-server.txt <<EOF
Legacy server retired.
EOF

touch backups/weekly-backup.tar
touch backups/monthly-backup.tar

cat > projects/README.md <<EOF
Internal Projects Repository
EOF