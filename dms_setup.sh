#!/usr/bin/env bash
set -e;
echo "Enter DMS ID:"
read dmsid
echo "*/15 * * * * /usr/bin/curl -d s=$? https://nosnch.in/${dmsid} &> /dev/null" | sudo tee /home/driaan/dms
