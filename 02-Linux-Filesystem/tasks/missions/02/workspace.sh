#!/bin/bash

set -e

LAB_HOME="/home/student/lab"
WORKSPACE="$LAB_HOME/workspace"

rm -rf "$WORKSPACE"

mkdir -p "$WORKSPACE"

cd "$WORKSPACE"

####################################################
# Linux Structure
####################################################

mkdir -p home/intern
mkdir -p etc
mkdir -p var/log
mkdir -p tmp
mkdir -p srv
mkdir -p usr/local
mkdir -p opt
mkdir -p incoming

####################################################
# Incoming Files
####################################################

cat > incoming/company.conf <<EOF
CloudForge Configuration
EOF

cat > incoming/nginx.log <<EOF
GET /index.html
EOF

cat > incoming/cache.tmp <<EOF
Temporary Cache
EOF

cat > incoming/customer-data <<EOF
Customer Portal Data
EOF

cat > incoming/python-app <<EOF
Python Analytics Application
EOF

cat > incoming/notes.txt <<EOF
Intern Personal Notes
EOF

####################################################
# Mentor
####################################################

cat > home/intern/README.md <<EOF
Welcome Engineer,

Everything inside the incoming directory
is misplaced.

Every Linux directory has a purpose.

Restore the filesystem.

EOF