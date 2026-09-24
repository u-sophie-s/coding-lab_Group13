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
    local ts
    ts=$(date '+%Y%m%d_%H%M')

    for log in "${LOG_FILES[@]}"; do
        src="$ACTIVE_DIR/$log"
        if [ -s "$src" ]; then
            base="${log%.log}"
            dest="$ARCHIVE_DIR/${base}_${ts}.log"
            if [ -e "$dest" ]; then
                echo "Skipping $log: $dest already exists."
                continue
            fi
            mv "$src" "$dest"
            echo "Archived $log -> $dest"
        else
            echo "$log is empty or missing, nothing to archive."
        fi
	touch "$src"
    done
    echo "Rotation complete."
}

main() {
    rotate_logs
}

main
