#!/bin/bash


CRITICAL_DIR="/etc /bin /sbin /usr/bin /usr/sbin /boot /var/lib/apt"

AIDE_LOG="/var/log/aide/aide-$(date +%F).log"

echo "==== Revisando cambios críticos de AIDE: $(date) ===="

for DIR in $CRITICAL_DIR; do
    grep "$DIR" "$AIDE_LOG"
done
