#!/bin/bash
#
# hospital_archive.sh - Log rotation
#
# M4 (Liam - The Archivist)

ACTIVE_DIR="active_logs"
ARCHIVE_DIR="archived_logs"
LOG_FILES=("heart_rate_log.log" "temperature_log.log" "water_usage_log.log")

rotate_logs() {
    mkdir -p "$ARCHIVE_DIR"

    for log in "${LOG_FILES[@]}"; do
        src="$ACTIVE_DIR/$log"
        if [ -s "$src" ]; then
            mv "$src" "$ARCHIVE_DIR/$log"
            echo "Archived $log"
        else
            echo "$log is empty or missing, nothing to archive."
        fi
    done
}

main() {
    rotate_logs
}

main
