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

mkdir -p home/devops
mkdir -p usr/bin
mkdir -p usr/local/bin
mkdir -p opt/analytics-suite
mkdir -p etc
mkdir -p var/log
mkdir -p archive

####################################################
# Analytics Application
####################################################

cat > opt/analytics-suite/analytics <<'EOF'
#!/bin/bash

echo
echo "=================================="
echo "CloudForge Analytics Suite"
echo "=================================="
echo
echo "Application Started Successfully."
echo
EOF

chmod +x opt/analytics-suite/analytics

####################################################
# README
####################################################

cat > home/devops/README.md <<EOF
CloudForge Deployment Team

Yesterday we deployed Analytics Suite.

The deployment completed successfully.

Unfortunately nobody can launch the application.

The software must remain inside its installation
directory.

Restore the deployment using Linux best practices.

Rules

- Do NOT move the application.
- Do NOT modify the application.
- Do NOT duplicate the application.

When finished,

run

lab validate
EOF

####################################################
# Logs
####################################################

cat > var/log/deployment.log <<EOF
Deployment Started...

Analytics Suite Installed

Installation Path

/opt/analytics-suite

Deployment Completed Successfully
EOF

####################################################
# Noise
####################################################

touch archive/old-deployment.tar
touch archive/install.log
touch etc/system.conf
touch usr/bin/python
touch usr/bin/bash