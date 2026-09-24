#!/bin/bash
#
# hospital_archive.sh - Log rotation
#
# M4 (Liam - The Archivist)

ACTIVE_DIR="active_logs"
ARCHIVE_DIR="archived_logs"
LOG_FILES=("heart_rate_log.log" "temperature_log.log" "water_usage_log.log")

rotate_logs() {
    echo "rotate_logs: TODO"
}

main() {
    rotate_logs
}

main
