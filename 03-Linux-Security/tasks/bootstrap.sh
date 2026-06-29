#!/bin/bash

set -e

clear

echo "==============================================="
echo " Linux Handbook"
echo " Filesystem Lab"
echo "==============================================="
echo

echo "[1/4] Building Docker Image..."
docker compose build

echo

echo "[2/4] Starting Container..."
docker compose up -d

echo

echo "[3/4] Initializing Lab..."
docker exec filesystem-lab bash /opt/linux-handbook/lab/init.sh

echo

echo "[4/4] Opening Lab..."
echo

docker exec -it filesystem-lab bash